.class Lorg/chromium/chrome/browser/InsetObserverView$InsetObserverViewApi21;
.super Lorg/chromium/chrome/browser/InsetObserverView;
.source "InsetObserverView.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/InsetObserverView;-><init>(Landroid/content/Context;)V

    .line 91
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .prologue
    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/InsetObserverView$InsetObserverViewApi21;->mWindowInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 100
    return-object p1
.end method
