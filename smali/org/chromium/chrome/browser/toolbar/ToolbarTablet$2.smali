.class Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;
.super Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;
.source "ToolbarTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextFocusBackward()Landroid/view/View;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    sget v1, Lorg/chromium/chrome/R$id;->home_button:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    sget v1, Lorg/chromium/chrome/R$id;->menu_button:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextFocusForward()Landroid/view/View;
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    sget v1, Lorg/chromium/chrome/R$id;->forward_button:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$2;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    sget v1, Lorg/chromium/chrome/R$id;->refresh_button:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
