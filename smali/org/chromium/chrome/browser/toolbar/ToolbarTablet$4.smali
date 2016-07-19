.class Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;
.super Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;
.source "ToolbarTablet.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getNextFocusBackward()Landroid/view/View;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mForwardButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->access$100(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 179
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mBackButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->access$000(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    # getter for: Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->mHomeButton:Lorg/chromium/chrome/browser/widget/TintedImageButton;
    invoke-static {v0}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->access$200(Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;)Lorg/chromium/chrome/browser/widget/TintedImageButton;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/widget/TintedImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 182
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    sget v1, Lorg/chromium/chrome/R$id;->home_button:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    sget v1, Lorg/chromium/chrome/R$id;->menu_button:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getNextFocusForward()Landroid/view/View;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet$4;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;

    sget v1, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/toolbar/ToolbarTablet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
