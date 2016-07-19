.class Lorg/chromium/ui/DropdownPopupWindow$1;
.super Ljava/lang/Object;
.source "DropdownPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/DropdownPopupWindow;


# direct methods
.method constructor <init>(Lorg/chromium/ui/DropdownPopupWindow;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lorg/chromium/ui/DropdownPopupWindow$1;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$1;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    # getter for: Lorg/chromium/ui/DropdownPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v0}, Lorg/chromium/ui/DropdownPopupWindow;->access$000(Lorg/chromium/ui/DropdownPopupWindow;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/DropdownPopupWindow$1;->this$0:Lorg/chromium/ui/DropdownPopupWindow;

    invoke-virtual {v0}, Lorg/chromium/ui/DropdownPopupWindow;->show()V

    .line 62
    :cond_0
    return-void
.end method
