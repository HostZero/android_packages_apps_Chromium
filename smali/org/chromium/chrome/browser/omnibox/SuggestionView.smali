.class Lorg/chromium/chrome/browser/omnibox/SuggestionView;
.super Landroid/view/ViewGroup;
.source "SuggestionView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

.field private mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

.field private mNavigationButton:Landroid/widget/ImageView;

.field private final mPhoneUrlBarLeftOffsetPx:I

.field private final mPhoneUrlBarLeftOffsetRtlPx:I

.field private mPosition:I

.field private mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

.field private mRefineView:Landroid/view/View;

.field private mRefineWidth:I

.field private mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

.field private mSuggestionAnswerHeight:I

.field private mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

.field private mSuggestionHeight:I

.field private mSuggestionItem:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

.field private mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

.field private mUseDarkColors:Ljava/lang/Boolean;

.field private final mViewPositionHolder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/omnibox/LocationBar;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 103
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I

    .line 104
    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->omnibox_suggestion_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionHeight:I

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$dimen;->omnibox_suggestion_answer_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionAnswerHeight:I

    .line 112
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v4, [I

    sget v2, Lorg/chromium/chrome/R$attr;->selectableItemBackground:I

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 114
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 117
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    .line 118
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->addView(Landroid/view/View;)V

    .line 120
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$1;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    .line 156
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lorg/chromium/chrome/R$string;->accessibility_omnibox_btn_refine:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    sget v1, Lorg/chromium/chrome/R$id;->refine_view_id:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 164
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 165
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 166
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->addView(Landroid/view/View;)V

    .line 169
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineWidth:I

    .line 171
    invoke-interface {p2}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/UrlBar;

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    .line 173
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPhoneUrlBarLeftOffsetPx:I

    .line 176
    const/high16 v0, 0x42380000    # 46.0f

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPhoneUrlBarLeftOffsetRtlPx:I

    .line 180
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/widget/TintedDrawable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPosition:I

    return v0
.end method

.method static synthetic access$1300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionHeight:I

    return v0
.end method

.method static synthetic access$1600(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getStandardFontColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1702(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/LocationBar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Lorg/chromium/chrome/browser/omnibox/UrlBar;)Lorg/chromium/chrome/browser/omnibox/UrlBar;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    return-object p1
.end method

.method static synthetic access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I

    return-object v0
.end method

.method static synthetic access$2100(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPhoneUrlBarLeftOffsetRtlPx:I

    return v0
.end method

.method static synthetic access$2200(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPhoneUrlBarLeftOffsetPx:I

    return v0
.end method

.method static synthetic access$2300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUseDarkColors:Ljava/lang/Boolean;

    return-object v0
.end method

.method private applyHighlightToMatchRegions(Landroid/text/Spannable;Ljava/util/List;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 402
    move v1, v0

    move v2, v0

    .line 403
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 404
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    .line 405
    iget v4, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;->style:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 407
    iget v2, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;->offset:I

    .line 409
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_1

    .line 410
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 414
    :goto_1
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 415
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 419
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-interface {p1, v4, v2, v0, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move v2, v3

    .line 403
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 412
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    iget v0, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;->offset:I

    goto :goto_1

    .line 423
    :cond_2
    return v2
.end method

.method private getStandardFontColor()I
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUseDarkColors:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUseDarkColors:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, -0xcccccd

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setAnswer(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;)V
    .locals 4

    .prologue
    .line 514
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 516
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;->getFirstLine()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;

    move-result-object v1

    .line 517
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$200(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->getMaxTextHeightSp(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 518
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$200(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->buildSpannable(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;Landroid/graphics/Paint$FontMetrics;F)Landroid/text/Spannable;

    move-result-object v1

    .line 520
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$200(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 522
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;->getSecondLine()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;

    move-result-object v1

    .line 523
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->getMaxTextHeightSp(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 524
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/chromium/chrome/browser/omnibox/AnswerTextBuilder;->buildSpannable(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;Landroid/graphics/Paint$FontMetrics;F)Landroid/text/Spannable;

    move-result-object v0

    .line 526
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v2

    sget-object v3, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 528
    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 532
    const v2, 0x3f933333    # 1.15f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 533
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 534
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 535
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # setter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImageMaxSize:I
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$402(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;I)I

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "https:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer$ImageLine;->getImage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\/"

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;

    invoke-interface {v1}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getCurrentTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getProfile()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object v1

    new-instance v2, Lorg/chromium/chrome/browser/omnibox/SuggestionView$3;

    invoke-direct {v2, p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$3;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V

    invoke-static {v1, v0, v2}, Lorg/chromium/chrome/browser/omnibox/AnswersImage;->requestAnswersImage(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/omnibox/AnswersImage$AnswersImageObserver;)I

    .line 548
    :cond_0
    return-void
.end method

.method private setRefinable(Z)V
    .locals 2

    .prologue
    .line 340
    if-eqz p1, :cond_0

    .line 341
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    new-instance v1, Lorg/chromium/chrome/browser/omnibox/SuggestionView$2;

    invoke-direct {v1, p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$2;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setRefineIcon(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 371
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

    if-eqz v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_suggestion_refine:I

    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->constructTintedDrawable(Landroid/content/res/Resources;I)Lorg/chromium/chrome/browser/widget/TintedDrawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

    .line 375
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUseDarkColors:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/chromium/chrome/R$color;->dark_mode_tint:I

    :goto_1
    invoke-static {v2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getColorStateList(Landroid/content/res/Resources;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setTint(Landroid/content/res/ColorStateList;)V

    .line 377
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setBounds(IIII)V

    .line 381
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineIcon:Lorg/chromium/chrome/browser/widget/TintedDrawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/TintedDrawable;->setState([I)Z

    .line 382
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_0

    .line 375
    :cond_1
    sget v0, Lorg/chromium/chrome/R$color;->light_mode_tint:I

    goto :goto_1
.end method

.method private setSuggestedQuery(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;ZZZ)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 451
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getMatchedQuery()Ljava/lang/String;

    move-result-object v2

    .line 454
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    .line 455
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 457
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDescription()Ljava/lang/String;

    move-result-object v1

    .line 458
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDescriptionClassifications()Ljava/util/List;

    move-result-object v0

    .line 463
    :goto_0
    if-nez v1, :cond_6

    .line 464
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Invalid suggestion sent with no displayable text"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 460
    :cond_0
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDisplayTextClassifications()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_1
    const-string/jumbo v1, ""

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    new-instance v4, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    invoke-direct {v4, v3, v3}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;-><init>(II)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    .line 470
    :goto_1
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getType()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    .line 471
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getFillIntoEdit()Ljava/lang/String;

    move-result-object v5

    .line 473
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v5, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    if-ge v4, v2, :cond_4

    .line 477
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u2026 "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move v2, v3

    .line 481
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 482
    new-instance v6, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    iget v0, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;->offset:I

    add-int/lit8 v7, v0, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    iget v0, v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;->style:I

    invoke-direct {v6, v7, v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;-><init>(II)V

    invoke-interface {v1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 481
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 486
    :cond_2
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;

    invoke-direct {v0, v3, v3}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion$MatchClassification;-><init>(II)V

    invoke-interface {v1, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 488
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 489
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$200(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 490
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v0, v5, v3, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v5

    # setter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRequiredWidth:F
    invoke-static {v2, v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$802(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;F)F

    .line 492
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result v0

    # setter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mMatchContentsWidth:F
    invoke-static {v2, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$902(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;F)F

    .line 497
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRequiredWidth:F
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$800(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)F

    move-result v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mMatchContentsWidth:F
    invoke-static {v3}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$900(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)F

    move-result v3

    invoke-interface {v0, v2, v3}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->onTextWidthsUpdated(FF)V

    :cond_3
    move-object v0, v4

    .line 503
    :cond_4
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 504
    if-nez p4, :cond_5

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->applyHighlightToMatchRegions(Landroid/text/Spannable;Ljava/util/List;)Z

    .line 505
    :cond_5
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$200(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 506
    return-void

    :cond_6
    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto/16 :goto_1
.end method

.method private setUrlText(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;)Z
    .locals 3

    .prologue
    .line 392
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 394
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDisplayTextClassifications()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->applyHighlightToMatchRegions(Landroid/text/Spannable;Ljava/util/List;)Z

    move-result v0

    .line 396
    const v2, -0xaa6a02

    invoke-direct {p0, v1, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->showDescriptionLine(Landroid/text/Spannable;I)V

    .line 397
    return v0
.end method

.method private showDescriptionLine(Landroid/text/Spannable;I)V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 436
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 437
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->onGestureDown()V

    .line 246
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public init(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;IZ)V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->d(Landroid/view/View;I)V

    .line 263
    iput p3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPosition:I

    .line 264
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->jumpDrawablesToCurrentState()V

    .line 265
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUseDarkColors:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUseDarkColors:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_0
    move v0, v2

    .line 266
    :goto_0
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionItem:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    invoke-virtual {p1, v5}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    .line 337
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 265
    goto :goto_0

    .line 267
    :cond_2
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUseDarkColors:Ljava/lang/Boolean;

    .line 268
    if-eqz v0, :cond_3

    .line 269
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$200(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v5

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getStandardFontColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 270
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setRefineIcon(Z)V

    .line 273
    :cond_3
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionItem:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;

    .line 274
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getSuggestion()Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    move-result-object v5

    iput-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    .line 275
    iput-object p2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    .line 277
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # invokes: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->resetTextWidths()V
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$100(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)V

    .line 278
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 279
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 280
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 281
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # setter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImageMaxSize:I
    invoke-static {v5, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$402(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;I)I

    .line 283
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$200(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, 0x41880000    # 17.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 284
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 288
    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->hasAnswer()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getAnswer()Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setAnswer(Lorg/chromium/chrome/browser/omnibox/SuggestionAnswer;)V

    .line 290
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # invokes: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setSuggestionIcon(IZ)V
    invoke-static {v4, v3, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$600(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;IZ)V

    .line 291
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setRefinable(Z)V

    goto/16 :goto_1

    .line 296
    :cond_4
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;->getMatchedQuery()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDisplayText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 298
    iget-object v6, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v6}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getType()I

    move-result v6

    .line 299
    iget-object v7, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v7}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->isUrlSuggestion()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 300
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->isStarred()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 301
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # invokes: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setSuggestionIcon(IZ)V
    invoke-static {v3, v1, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$600(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;IZ)V

    .line 307
    :goto_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    move v3, v2

    .line 309
    :goto_3
    if-eqz v3, :cond_8

    .line 310
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setUrlText(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;)Z

    move-result v0

    .line 314
    :goto_4
    invoke-direct {p0, p1, v2, v3, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setSuggestedQuery(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;ZZZ)V

    .line 315
    if-nez v5, :cond_9

    :goto_5
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setRefinable(Z)V

    goto/16 :goto_1

    .line 302
    :cond_5
    if-ne v6, v2, :cond_6

    .line 303
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # invokes: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setSuggestionIcon(IZ)V
    invoke-static {v3, v2, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$600(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;IZ)V

    goto :goto_2

    .line 305
    :cond_6
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    const/4 v6, 0x2

    # invokes: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setSuggestionIcon(IZ)V
    invoke-static {v3, v6, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$600(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;IZ)V

    goto :goto_2

    :cond_7
    move v3, v1

    .line 307
    goto :goto_3

    .line 312
    :cond_8
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, v1

    goto :goto_4

    :cond_9
    move v2, v1

    .line 315
    goto :goto_5

    .line 318
    :cond_a
    const/16 v7, 0x14

    if-ne v6, v7, :cond_d

    move v3, v4

    .line 325
    :cond_b
    :goto_6
    iget-object v7, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # invokes: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setSuggestionIcon(IZ)V
    invoke-static {v7, v3, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$600(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;IZ)V

    .line 326
    if-nez v5, :cond_f

    :goto_7
    invoke-direct {p0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setRefinable(Z)V

    .line 327
    invoke-direct {p0, p1, v1, v1, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setSuggestedQuery(Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxResultItem;ZZZ)V

    .line 328
    const/16 v0, 0x9

    if-eq v6, v0, :cond_c

    const/16 v0, 0xc

    if-ne v6, v0, :cond_10

    .line 330
    :cond_c
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getStandardFontColor()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->showDescriptionLine(Landroid/text/Spannable;I)V

    goto/16 :goto_1

    .line 320
    :cond_d
    const/16 v7, 0xb

    if-eq v6, v7, :cond_e

    const/4 v7, 0x7

    if-ne v6, v7, :cond_b

    :cond_e
    move v3, v2

    .line 323
    goto :goto_6

    :cond_f
    move v2, v1

    .line 326
    goto :goto_7

    .line 334
    :cond_10
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 238
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->invalidate()V

    .line 239
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getType()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 187
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    # invokes: Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->resetTextWidths()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->access$100(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)V

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 191
    :goto_1
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    .line 192
    if-eqz v3, :cond_3

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineWidth:I

    .line 193
    :goto_2
    if-nez v0, :cond_5

    move v0, v1

    .line 194
    :goto_3
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v2, v0, v1, v4, v5}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->layout(IIII)V

    .line 199
    if-eqz v3, :cond_4

    move v0, v1

    .line 200
    :goto_4
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineWidth:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v4}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 190
    goto :goto_1

    :cond_3
    move v2, v1

    .line 192
    goto :goto_2

    .line 199
    :cond_4
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getMeasuredWidth()I

    move-result v0

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineWidth:I

    sub-int/2addr v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 209
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 210
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionHeight:I

    .line 211
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;->getAnswerContents()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionAnswerHeight:I

    .line 214
    :cond_0
    invoke-virtual {p0, v3, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->setMeasuredDimension(II)V

    .line 218
    if-nez v3, :cond_1

    .line 233
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 221
    :goto_1
    if-eqz v2, :cond_2

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineWidth:I

    .line 222
    :cond_2
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    sub-int v1, v3, v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->measure(II)V

    .line 225
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 228
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineWidth:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 232
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mRefineView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    move v2, v1

    .line 220
    goto :goto_1
.end method

.method public setSelected(Z)V
    .locals 2

    .prologue
    .line 364
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 365
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestion:Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->onSetUrlToSuggestion(Lorg/chromium/chrome/browser/omnibox/OmniboxSuggestion;)V

    .line 368
    :cond_0
    return-void
.end method
