.class Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;
.super Ljava/lang/Object;
.source "StripLayoutHelper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    # getter for: Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mTabMenu:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->access$200(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 200
    if-nez p3, :cond_0

    .line 201
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper$1;->this$0:Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;

    # getter for: Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->mModel:Lorg/chromium/chrome/browser/tabmodel/TabModel;
    invoke-static {v0}, Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;->access$300(Lorg/chromium/chrome/browser/compositor/overlays/strip/StripLayoutHelper;)Lorg/chromium/chrome/browser/tabmodel/TabModel;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lorg/chromium/chrome/browser/tabmodel/TabModel;->closeAllTabs(ZZ)V

    .line 203
    :cond_0
    return-void
.end method
