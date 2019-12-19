package cn.ecut.assetmana.bean;

public class MenuMeta {
    private String title;
    private String icon;
    private boolean noCache;
    private boolean breadcrumb;
    public String getIcon() {
        return icon;
    }

    public boolean isNoCache() {
        return noCache;
    }

    public void setNoCache(boolean noCache) {
        this.noCache = noCache;
    }

    public boolean isBreadcrumb() {
        return breadcrumb;
    }

    public void setBreadcrumb(boolean breadcrumb) {
        this.breadcrumb = breadcrumb;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


}
