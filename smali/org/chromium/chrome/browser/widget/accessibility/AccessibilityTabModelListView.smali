.class public Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;
.super Landroid/widget/ListView;
.source "AccessibilityTabModelListView.java"


# instance fields
.field private final mAdapter:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

.field private mCanScrollVertically:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->mCanScrollVertically:Z

    .line 26
    new-instance v0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->mAdapter:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    .line 27
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/widget/ListView;->onFinishInflate()V

    .line 33
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->mAdapter:Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelAdapter;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->mCanScrollVertically:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCanScroll(Z)V
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/chromium/chrome/browser/widget/accessibility/AccessibilityTabModelListView;->mCanScrollVertically:Z

    .line 48
    return-void
.end method
