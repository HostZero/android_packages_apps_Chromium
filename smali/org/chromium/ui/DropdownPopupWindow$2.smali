.class Lorg/chromium/ui/DropdownPopupWindow$2;
.super Ljava/lang/Object;
.source "DropdownPopupWindow.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/DropdownPopupWindow;


# direct methods
.method constructor <init>(Lorg/chromium/ui/DropdownPopupWindow;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    # getter for: Lorg/chromium/ui/DropdownPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$100(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    # getter for: Lorg/chromium/ui/DropdownPopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$100(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 72
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    # getter for: Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    # getter for: Lorg/chromium/ui/DropdownPopupWindow;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;
    invoke-static {v1}, Lorg/chromium/ui/DropdownPopupWindow;->access$200(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 73
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    # getter for: Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    # getter for: Lorg/chromium/ui/DropdownPopupWindow;->mViewAndroidDelegate:Lorg/chromium/ui/base/ViewAndroidDelegate;
    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$300(Lorg/chromium/ui/DropdownPopupWindow;)Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/ui/DropdownPopupWindow$2;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    # getter for: Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v1}, Lorg/chromium/ui/DropdownPopupWindow;->access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->releaseAnchorView(Landroid/view/View;)V

    .line 75
    return-void
.end method
