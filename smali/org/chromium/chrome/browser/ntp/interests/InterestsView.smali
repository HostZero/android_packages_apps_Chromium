.class public Lorg/chromium/chrome/browser/ntp/interests/InterestsView;
.super Landroid/widget/FrameLayout;
.source "InterestsView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAdapter:Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;

.field private mInterestsGrid:Landroid/widget/GridView;

.field private mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;-><init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mAdapter:Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/interests/InterestsView;)Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 59
    sget v0, Lorg/chromium/chrome/R$id;->interests_list_view:I

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mInterestsGrid:Landroid/widget/GridView;

    .line 60
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mInterestsGrid:Landroid/widget/GridView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mAdapter:Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    return-void
.end method

.method public setInterests(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mAdapter:Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->addAll(Ljava/util/Collection;)V

    .line 53
    return-void
.end method

.method public setListener(Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    .line 44
    return-void
.end method
