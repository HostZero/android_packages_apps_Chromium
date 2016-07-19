.class public Lorg/chromium/content/browser/ContentView;
.super Landroid/widget/FrameLayout;
.source "ContentView.java"

# interfaces
.implements Lorg/chromium/content/browser/ContentViewCore$InternalAccessDelegate;
.implements Lorg/chromium/content/browser/SmartClipProvider;


# instance fields
.field protected final mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    const/4 v0, 0x0

    const v1, 0x1010085

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->getScrollBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentView;->setHorizontalScrollBarEnabled(Z)V

    .line 62
    invoke-virtual {p0, v2}, Lorg/chromium/content/browser/ContentView;->setVerticalScrollBarEnabled(Z)V

    .line 65
    :cond_0
    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/ContentView;->setFocusable(Z)V

    .line 66
    invoke-virtual {p0, v3}, Lorg/chromium/content/browser/ContentView;->setFocusableInTouchMode(Z)V

    .line 68
    iput-object p2, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    .line 69
    return-void
.end method

.method public static createContentView(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)Lorg/chromium/content/browser/ContentView;
    .locals 2

    .prologue
    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 46
    new-instance v0, Lorg/chromium/content/browser/ContentView$ContentViewApi23;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/ContentView$ContentViewApi23;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    .line 48
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/content/browser/ContentView;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/ContentView;-><init>(Landroid/content/Context;Lorg/chromium/content/browser/ContentViewCore;)V

    goto :goto_0
.end method


# virtual methods
.method public awakenScrollBars()Z
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/widget/FrameLayout;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method public awakenScrollBars(IZ)Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lorg/chromium/content/browser/ContentView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 149
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public extractSmartClipData(IIII)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/content/browser/ContentViewCore;->extractSmartClipData(IIII)V

    .line 286
    return-void
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 266
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 267
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onAttachedToWindow()V

    .line 268
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onCheckIsTextEditor()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 273
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->onDetachedFromWindow()V

    .line 274
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 120
    :try_start_0
    const-string/jumbo v0, "ContentView.onFocusChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 121
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 122
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onFocusChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    const-string/jumbo v0, "ContentView.onFocusChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ContentView.onFocusChanged"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 166
    iget-object v1, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewCore;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 167
    :cond_0
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0}, Lorg/chromium/content/browser/ContentViewCore;->getContentViewClient()Lorg/chromium/content/browser/ContentViewClient;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->getDesiredWidthMeasureSpec()I

    move-result v0

    .line 239
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    move p1, v0

    .line 244
    :cond_0
    invoke-virtual {v1}, Lorg/chromium/content/browser/ContentViewClient;->getDesiredHeightMeasureSpec()I

    move-result v0

    .line 245
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    .line 249
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 250
    return-void
.end method

.method public onScrollChanged(IIII)V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 94
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 99
    :try_start_0
    const-string/jumbo v0, "ContentView.onSizeChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 101
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/chromium/content/browser/ContentViewCore;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    const-string/jumbo v0, "ContentView.onSizeChanged"

    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    const-string/jumbo v1, "ContentView.onSizeChanged"

    invoke-static {v1}, Lorg/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    throw v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 279
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->onVisibilityChanged(Landroid/view/View;I)V

    .line 280
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 131
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->onWindowFocusChanged(Z)V

    .line 132
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/ContentViewCore;->supportsAccessibilityAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/ContentViewCore;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public scrollBy(II)V
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/content/browser/ContentViewCore;->scrollBy(FFZ)V

    .line 194
    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/chromium/content/browser/ContentViewCore;->scrollTo(FF)V

    .line 199
    return-void
.end method

.method public setSmartClipResultHandler(Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V

    .line 313
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/ContentView;->mContentViewCore:Lorg/chromium/content/browser/ContentViewCore;

    new-instance v1, Lorg/chromium/content/browser/ContentView$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/content/browser/ContentView$1;-><init>(Lorg/chromium/content/browser/ContentView;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lorg/chromium/content/browser/ContentViewCore;->setSmartClipDataListener(Lorg/chromium/content/browser/ContentViewCore$SmartClipDataListener;)V

    goto :goto_0
.end method

.method public super_awakenScrollBars(IZ)Z
    .locals 1

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method public super_dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 326
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 341
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 342
    return-void
.end method

.method public super_onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 336
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public super_onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 321
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
