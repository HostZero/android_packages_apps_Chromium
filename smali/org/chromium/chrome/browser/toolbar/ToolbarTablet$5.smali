.class Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$5;
.super Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;
.source "ToolbarTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextFocusBackward()Landroid/view/View;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    sget v1, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getNextFocusForward()Landroid/view/View;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected handleEnterKeyPress()Z
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->getMenuButtonHelper()Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$5;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    iget-object v1, v1, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mMenuButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/appmenu/AppMenuButtonHelper;->onEnterKeyPress(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
