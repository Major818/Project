package cn.hbu.dreamcar.pojo;

/**
 * Created by Administrator on 2017/10/19.
 */
public class Product {

    private String prodId;
    private String prodName;
    private Integer prodPrice;
    private String prodKind;
    private String prodImgurl;
    private Integer prodNum;
    private String prodDesc;

    public String getProdId() {
        return prodId;
    }

    public void setProdId(String prodId) {
        this.prodId = prodId;
    }

    public String getProdName() {
        return prodName;
    }

    public void setProdName(String prodName) {
        this.prodName = prodName;
    }

    public Integer getProdPrice() {
        return prodPrice;
    }

    public void setProdPrice(Integer prodPrice) {
        this.prodPrice = prodPrice;
    }

    public String getProdKind() {
        return prodKind;
    }

    public void setProdKind(String prodKind) {
        this.prodKind = prodKind;
    }

    public String getProdImgurl() {
        return prodImgurl;
    }

    public void setProdImgurl(String prodImgurl) {
        this.prodImgurl = prodImgurl;
    }

    public Integer getProdNum() {
        return prodNum;
    }

    public void setProdNum(Integer prodNum) {
        this.prodNum = prodNum;
    }

    public String getProdDesc() {
        return prodDesc;
    }

    public void setProdDesc(String prodDesc) {
        this.prodDesc = prodDesc;
    }

    @Override
    public String toString() {
        return "Product{" +
                "prodId=" + prodId +
                ", prodName='" + prodName + '\'' +
                ", prodPrice=" + prodPrice +
                ", prodKind='" + prodKind + '\'' +
                ", prodImgurl='" + prodImgurl + '\'' +
                ", prodNum=" + prodNum +
                ", prodDesc='" + prodDesc + '\'' +
                '}';
    }
    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + ((prodId == null) ? 0 : prodId.hashCode());
        return result;
    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (!(obj instanceof Product))
            return false;
        Product other = (Product) obj;
        if(prodId!=null && prodId.equals(other.getProdId())){
            return true;
        }
        return false;
    }


}
