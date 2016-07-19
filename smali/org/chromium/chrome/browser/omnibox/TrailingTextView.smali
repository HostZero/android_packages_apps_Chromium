.class public Lorg/chromium/chrome/browser/omnibox/TrailingTextView;
.super Landroid/support/v7/widget/O;
.source "TrailingTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-super {p0}, Landroid/support/v7/widget/O;->onFinishInflate()V

    .line 25
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/TrailingTextView;->setFocusable(Z)V

    .line 26
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/TrailingTextView;->setFocusableInTouchMode(Z)V

    .line 27
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/TrailingTextView;->setClickable(Z)V

    .line 28
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/TrailingTextView;->setLongClickable(Z)V

    .line 29
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
