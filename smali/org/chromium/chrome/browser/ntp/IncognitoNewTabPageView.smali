.class public Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;
.super Landroid/widget/FrameLayout;
.source "IncognitoNewTabPageView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mFirstShow:Z

.field private mManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

.field private mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

.field private mSnapshotHeight:I

.field private mSnapshotScrollY:I

.field private mSnapshotWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mFirstShow:Z

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;)Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

    return-object v0
.end method


# virtual methods
.method captureThumbnail(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 92
    invoke-static {p0, p1}, Lorg/chromium/chrome/browser/util/ViewUtils;->captureBitmap(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mSnapshotWidth:I

    .line 94
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mSnapshotHeight:I

    .line 95
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mSnapshotScrollY:I

    .line 96
    return-void
.end method

.method initialize(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

    .line 73
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 103
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mFirstShow:Z

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mManager:Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$IncognitoNewTabPageManager;->onLoadingComplete()V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mFirstShow:Z

    .line 107
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 52
    sget v0, Lorg/chromium/chrome/R$id;->ntp_scrollview:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->setDescendantFocusability(I)V

    .line 58
    sget v0, Lorg/chromium/chrome/R$id;->learn_more:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    new-instance v1, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$1;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView$1;-><init>(Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method shouldCaptureThumbnail()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->getHeight()I

    move-result v1

    if-nez v1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->getWidth()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mSnapshotWidth:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->getHeight()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mSnapshotHeight:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mScrollView:Lorg/chromium/chrome/browser/ntp/NewTabScrollView;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/NewTabScrollView;->getScrollY()I

    move-result v1

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/IncognitoNewTabPageView;->mSnapshotScrollY:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
