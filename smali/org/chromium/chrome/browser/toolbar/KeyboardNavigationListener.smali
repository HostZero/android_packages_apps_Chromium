.class abstract Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;
.super Ljava/lang/Object;
.source "KeyboardNavigationListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getNextFocusBackward()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNextFocusForward()Landroid/view/View;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleEnterKeyPress()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x3d

    if-ne p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 23
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;->getNextFocusForward()Landroid/view/View;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    .line 33
    :goto_0
    return v0

    .line 26
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;->getNextFocusBackward()Landroid/view/View;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 30
    :cond_1
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 31
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/toolbar/KeyboardNavigationListener;->handleEnterKeyPress()Z

    move-result v0

    goto :goto_0

    .line 33
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
