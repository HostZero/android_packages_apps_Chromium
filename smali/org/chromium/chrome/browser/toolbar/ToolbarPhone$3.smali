.class Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;
.super Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;
.source "ToolbarPhone.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextFocusBackward()Landroid/view/View;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    sget v1, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNextFocusForward()Landroid/view/View;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    iget-object v0, v0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    .line 369
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone$3;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarPhone;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
