package cn.tedu.dreamcar.controller;

import cn.tedu.dreamcar.pojo.*;
import cn.tedu.dreamcar.service.OrderService;
import cn.tedu.dreamcar.utils.PaymentUtil;
import cn.tedu.dreamcar.utils.PropUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private HttpServletRequest request;


    @RequestMapping("/property")
    public String property(Model model) {
        List<Product> productList = orderService.findAllProduct();
        model.addAttribute("productList", productList);
        return "property";
    }

    @RequestMapping("/property_cart")
    public String toCart(String proid, String buyNum, Model model, HttpSession session,RedirectAttributes attr) {
       User user = (User) session.getAttribute("user");
        if (user==null){
            attr.addFlashAttribute("msg","请登录谢谢");
            return "redirect:/property";
        }
        int num = Integer.parseInt(buyNum);
        Map<Product, Integer> map = (Map<Product, Integer>) request.getSession().getAttribute("cartmap");

        Product prodInfo = orderService.findProductById(proid);

            if (map.containsKey(prodInfo)) {
                map.put(prodInfo, num + map.get(prodInfo));
            } else {
                map.put(prodInfo, num);

        }


        return "property_cart";
    }

    @RequestMapping("/property_details")
    public String toDeatils(String proid, Model model) {
        String proId = proid;
        Product prodInfo = orderService.findProductById(proId);
        model.addAttribute("info", prodInfo);

        return "/property_details";
    }

    @RequestMapping("/toCartUpdate")
    public void toUpdate(String pid, String buyNum, Model model) {
        String proId = pid;
        Product prodInfo = orderService.findProductById(proId);
        Map<Product, Integer> map = (Map<Product, Integer>) request.getSession().getAttribute("cartmap");
        int Num = Integer.parseInt(buyNum);
        if (Num<0){
            map.remove(prodInfo);
        }else {
                map.put(prodInfo,map.get(prodInfo)+Num);
        }
    }

    @RequestMapping("/order_add")
    public String toOrderadd() {
       /* int num = Integer.parseInt(buyNum);
        Product product = orderService.findProductById(proid);
        Map<Product,Integer> map = (Map<Product, Integer>) request.getSession().getAttribute("cartmap");
        if (map.containsKey(product)) {
            map.put(product, num+map.get(product));
        }else {
            map.put(product,num);
        }*/
        return "order_add";
    }

    @RequestMapping("/orderAdd")
    public String orderAdd(String receiverinfo,Model model,HttpServletResponse response,HttpSession session,RedirectAttributes attr) {
        User user = (User) request.getSession().getAttribute("user");
        if(user==null){
            attr.addFlashAttribute("msg","请登录谢谢");
            return "redirect:/property";
        }
        Order order = new Order();
        order.setReceiverinfo(receiverinfo);
        order.setId(UUID.randomUUID().toString());
        order.setPaystate(0);
        //System.out.println("slkdjfk"+user.getUserId());
        order.setUser_id(user.getUserId());

        List<OrderItem> list = new ArrayList<OrderItem>();
        Map<Product, Integer> cartmap = (Map<Product, Integer>)
                request.getSession().getAttribute("cartmap");
        //4.从购物map中取出要购买的商品信息, 存入OrderItem中
        double totalMoney = 0;
        for (Map.Entry<Product, Integer> entry : cartmap.entrySet()) {
            OrderItem item = new OrderItem();

            item.setOrderId(order.getId());//订单编号
            item.setProductId(entry.getKey().getProdId());//商品编号
            item.setBuyNum(entry.getValue());//购买数量
			/*
			 * 订单金额 = 所有商品金额的总和
			 * 商品订单金额 = 单价 * 数量
			 */
            totalMoney += entry.getKey().getProdPrice() * entry.getValue();
            order.setMoney(totalMoney);//手动计算订单金额

            //5.再将多个OrderItem存入list集合中
            list.add(item);
        }
        orderService.addOrder(order,list);

        cartmap.clear();

        List<OrderInfo> listOrder = orderService.findOrderByUserId(user.getUserId());
      //  System.out.println("上来看大家"+user.getUserId());
       // List<Order> listOrder =  orderService.findOrderByUserId(user.getUserId());
        if (listOrder==null){
            response.setHeader("refresh", "3;url=" + request.getContextPath()
                    + "/index");
        }
        request.setAttribute("list",listOrder);

        return "order_list";
    }
    @RequestMapping("/pay")
    public String toPay(String id,double money,Model model){
       // double totaMoney = Integer.parseInt(money);
        model.addAttribute("id",id);
        model.addAttribute("money",money);
        return "pay";
    }
    @RequestMapping("/pay_confirm")
    public String toPayConfirm(String orderid,double ordermoney,Model model){
        model.addAttribute("id",orderid);
        model.addAttribute("money",ordermoney);
        String oid = orderid;
        /*支付*/
        //2、准备第三方支付平台需要的参数
        String p0_Cmd = "Buy";//业务类型
        String p1_MerId =PropUtils.getProperty("p1_MerId");
        String p2_Order = oid;//商户的订单号
        //测试时使用
        String p3_Amt = "0.01";//订单金额
        //“正式发布”的时候使用
		/*OrderService os = BasicFactory.getFactory().getInstance(OrderService.class);
		Order order = os.findOrderByOid(oid);
		String p3_Amt = ""+order.getMoney();*/
        String p4_Cur = "CNY";//交易币种
        String p5_Pid = "";//商品名称
        String p6_Pcat = "";//商品分类
        String p7_Pdesc ="";//商品描述
        String p8_Url = PropUtils.getProperty("responseURL");
        String p9_SAF = "";//送货地址
        String pa_MP = "";//商户的扩展信息
        //支付通道编码
        String pd_FrpId=request.getParameter("pd_FrpId");
        //应答机制
        String pr_NeedResponse = "1";
        //调用工具类生产数据签名
        String hmac = PaymentUtil.buildHmac(p0_Cmd,
                p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid,
                p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP,
                pd_FrpId, pr_NeedResponse, PropUtils.getProperty("keyValue"));
        //3、将以上产生保存request
        request.setAttribute("pd_FrpId", pd_FrpId);
        request.setAttribute("p0_Cmd", p0_Cmd);
        request.setAttribute("p1_MerId", p1_MerId);
        request.setAttribute("p2_Order", p2_Order);
        request.setAttribute("p3_Amt", p3_Amt);
        request.setAttribute("p4_Cur", p4_Cur);
        request.setAttribute("p5_Pid", p5_Pid);
        request.setAttribute("p6_Pcat", p6_Pcat);
        request.setAttribute("p7_Pdesc", p7_Pdesc);
        request.setAttribute("p8_Url", p8_Url);
        request.setAttribute("p9_SAF", p9_SAF);
        request.setAttribute("pa_MP", pa_MP);
        request.setAttribute("pr_NeedResponse", pr_NeedResponse);
        request.setAttribute("hmac", hmac);

        return "pay_confirm";
    }

    @RequestMapping("/orderDelete")
    public String deleteOrder(String oid,Model model,HttpServletResponse response){
        orderService.deleteOrder(oid);
        User user = (User) request.getSession().getAttribute("user");
        List<OrderInfo> listOrder = orderService.findOrderByUserId(user.getUserId());
        //  System.out.println("上来看大家"+user.getUserId());
        // List<Order> listOrder =  orderService.findOrderByUserId(user.getUserId());
        if (listOrder==null){
            response.setHeader("refresh", "3;url=" + request.getContextPath()
                    + "/index");
        }
        request.setAttribute("list",listOrder);

        return "order_list";

    }
@RequestMapping("/order_Limt_add")
    public String tobuyInit(String proid,String buyNum){
        int num = Integer.parseInt(buyNum);
        Product product = orderService.findProductById(proid);
        Map<Product,Integer> map = (Map<Product, Integer>) request.getSession().getAttribute("cartmap");
        if (map.containsKey(product)){
            map.put(product,num+map.get(product));

        }       else {
            map.put(product,num);
        }
        return "order_add";
}
@RequestMapping("/MyOrderList")
        public String toMyOrderList(RedirectAttributes attr){
        User user = (User) request.getSession().getAttribute("user");
        if(user!=null){
            List<OrderInfo> listOrder = orderService.findOrderByUserId(user.getUserId());
            request.setAttribute("list",listOrder);
            return "order_list";
        }else {
            attr.addFlashAttribute("msg","请登录谢谢");
            return "index";
        }

}
}