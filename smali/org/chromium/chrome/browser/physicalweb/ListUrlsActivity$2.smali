.class Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$2;
.super Ljava/lang/Object;
.source "ListUrlsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 139
    iget-object v0, p0, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity$2;->this$0:Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->startRefresh(ZZ)V
    invoke-static {v0, v2, v1}, Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;->access$100(Lorg/chromium/chrome/browser/physicalweb/ListUrlsActivity;ZZ)V

    .line 140
    return v2
.end method
