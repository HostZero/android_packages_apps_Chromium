.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$4;
.super Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;
.source "ToolbarPhone.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextFocusBackward()Landroid/view/View;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mToggleTabStackButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->access$300(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getNextFocusForward()Landroid/view/View;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected handleEnterKeyPress()Z
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getMenuButtonHelper()Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->onEnterKeyPress(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
