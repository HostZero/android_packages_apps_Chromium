.class Lorg/chromium/chrome/browser/appmenu/AppMenu$1;
.super Ljava/lang/Object;
.source "AppMenu.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/appmenu/AppMenu;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->access$000(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenu;->mPopup:Landroid/widget/ListPopupWindow;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->access$000(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSelected(Z)V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenuItemEnterAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->access$100(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenu;->mMenuItemEnterAnimator:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->access$100(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 166
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenu;->mHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->access$200(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->appMenuDismissed()V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenu$1;->this$0:Lorg/chromium/chrome/browser/appmenu/AppMenu;

    # getter for: Lorg/chromium/chrome/browser/appmenu/AppMenu;->mHandler:Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;
    invoke-static {v0}, Lorg/chromium/chrome/browser/appmenu/AppMenu;->access$200(Lorg/chromium/chrome/browser/appmenu/AppMenu;)Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuHandler;->onMenuVisibilityChanged(Z)V

    .line 168
    return-void
.end method
