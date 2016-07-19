.class Lorg/chromium/chrome/browser/appmenu/AppMenu$2;
.super Ljava/lang/Object;
.source "AppMenu.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/appmenu/AppMenu;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$2;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$2;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->access$000(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 249
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$2;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    # invokes: Lorg/chromium/chrome/browser/appmenu/AppMenu;->runMenuItemEnterAnimations()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->access$300(Lorg/chromium/chrome/browser/appmenu/AppMenu;)V

    .line 250
    return-void
.end method
