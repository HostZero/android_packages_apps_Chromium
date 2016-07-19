.class Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;
.super Landroid/view/ViewGroup;
.source "SuggestionView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAnswerImage:Landroid/widget/ImageView;

.field private mAnswerImageMaxSize:I

.field private mForceIsFocused:Z

.field private mMatchContentsWidth:F

.field private final mRelayoutRunnable:Ljava/lang/Runnable;

.field private mRequiredWidth:F

.field private mSuggestionIcon:Landroid/graphics/drawable/Drawable;

.field private mSuggestionIconLeft:I

.field private mSuggestionIconType:I

.field private mTextLeft:I

.field private final mTextLine1:Landroid/widget/TextView;

.field private final mTextLine2:Landroid/widget/TextView;

.field private mTextRight:I

.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 574
    const-class v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    const/high16 v0, -0x80000000

    .line 598
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    .line 599
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 575
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconLeft:I

    .line 576
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    .line 577
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    .line 579
    iput v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconType:I

    .line 590
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$1;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRelayoutRunnable:Ljava/lang/Runnable;

    .line 601
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->setLayoutDirection(Landroid/view/View;I)V

    .line 603
    invoke-virtual {p0, p3}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 604
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setClickable(Z)V

    .line 605
    invoke-virtual {p0, v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setFocusable(Z)V

    .line 606
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionHeight:I
    invoke-static {p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1400(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$2;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$2;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 616
    new-instance v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;

    invoke-direct {v0, p0, p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer$3;-><init>(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;Lorg/chromium/chrome/browser/omnibox/SuggestionView;)V

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 658
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    .line 659
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionHeight:I
    invoke-static {p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1400(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 661
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 662
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    # invokes: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->getStandardFontColor()I
    invoke-static {p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1600(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextAlignment(Landroid/view/View;I)V

    .line 664
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->addView(Landroid/view/View;)V

    .line 666
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    .line 667
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionHeight:I
    invoke-static {p1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1400(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v2

    invoke-direct {v1, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 670
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->setTextAlignment(Landroid/view/View;I)V

    .line 672
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->addView(Landroid/view/View;)V

    .line 674
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    .line 675
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 677
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    iput v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImageMaxSize:I

    .line 679
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->addView(Landroid/view/View;)V

    .line 680
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->resetTextWidths()V

    return-void
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;I)I
    .locals 0

    .prologue
    .line 574
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImageMaxSize:I

    return p1
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;IZ)V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->setSuggestionIcon(IZ)V

    return-void
.end method

.method static synthetic access$800(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)F
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRequiredWidth:F

    return v0
.end method

.method static synthetic access$802(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;F)F
    .locals 0

    .prologue
    .line 574
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRequiredWidth:F

    return p1
.end method

.method static synthetic access$900(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;)F
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mMatchContentsWidth:F

    return v0
.end method

.method static synthetic access$902(Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;F)F
    .locals 0

    .prologue
    .line 574
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mMatchContentsWidth:F

    return p1
.end method

.method private getSuggestionIconLeftPosition()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 845
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 854
    :goto_0
    return v0

    .line 849
    :cond_0
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 850
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v1

    aget v1, v1, v0

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 852
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getLocationOnScreen([I)V

    .line 854
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v2

    aget v0, v2, v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getSuggestionTextLeftPosition()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 822
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1800(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 826
    :goto_0
    return v0

    .line 824
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getUrlBarLeftOffset()I

    move-result v1

    .line 825
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getLocationOnScreen([I)V

    .line 826
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v2

    aget v0, v2, v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getSuggestionTextRightPosition()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 833
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1800(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 837
    :goto_0
    return v0

    .line 835
    :cond_0
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getUrlBarLeftOffset()I

    move-result v1

    .line 836
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getLocationOnScreen([I)V

    .line 837
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v2

    aget v0, v2, v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method private getUrlBarLeftOffset()I
    .locals 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->getLocationOnScreen([I)V

    .line 811
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mViewPositionHolder:[I
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 813
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPhoneUrlBarLeftOffsetRtlPx:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2100(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mPhoneUrlBarLeftOffsetPx:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2200(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v0

    goto :goto_0
.end method

.method private resetTextWidths()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 683
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRequiredWidth:F

    .line 684
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mMatchContentsWidth:F

    .line 685
    return-void
.end method

.method private setSuggestionIcon(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 913
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconType:I

    if-ne v0, p1, :cond_0

    if-nez p2, :cond_0

    .line 943
    :goto_0
    return-void

    .line 914
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 916
    :cond_1
    sget v0, Lorg/chromium/chrome/R$drawable;->ic_omnibox_page:I

    .line 917
    packed-switch p1, :pswitch_data_0

    .line 933
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/chromium/base/ApiCompatibilityUtils;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIcon:Landroid/graphics/drawable/Drawable;

    .line 934
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUseDarkColors:Ljava/lang/Boolean;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$2300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/chromium/chrome/R$color;->light_normal_color:I

    invoke-static {v0, v1}, Lorg/chromium/base/ApiCompatibilityUtils;->getColor(Landroid/content/res/Resources;I)I

    move-result v0

    :goto_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 937
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 941
    iput p1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconType:I

    .line 942
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->invalidate()V

    goto :goto_0

    .line 919
    :pswitch_1
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_star:I

    goto :goto_1

    .line 922
    :pswitch_2
    sget v0, Lorg/chromium/chrome/R$drawable;->ic_suggestion_magnifier:I

    goto :goto_1

    .line 925
    :pswitch_3
    sget v0, Lorg/chromium/chrome/R$drawable;->ic_suggestion_history:I

    goto :goto_1

    .line 928
    :pswitch_4
    sget v0, Lorg/chromium/chrome/R$drawable;->btn_mic:I

    goto :goto_1

    :cond_2
    move v0, v1

    .line 934
    goto :goto_2

    .line 917
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 708
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    if-eq p2, v1, :cond_0

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    if-eq p2, v1, :cond_0

    .line 709
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 751
    :goto_0
    return v0

    .line 712
    :cond_0
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getMeasuredHeight()I

    move-result v2

    .line 713
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    .line 714
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 718
    :goto_1
    add-int v4, v3, v1

    if-le v4, v2, :cond_4

    .line 721
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    if-ne p2, v3, :cond_3

    .line 747
    :cond_1
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 748
    const/4 v1, 0x0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 749
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 750
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    move v1, v0

    .line 714
    goto :goto_1

    .line 724
    :cond_3
    sub-int v0, v2, v1

    goto :goto_2

    .line 728
    :cond_4
    sub-int v0, v2, v3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 729
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    if-ne p2, v2, :cond_5

    add-int/2addr v0, v3

    .line 734
    :cond_5
    if-eq v3, v1, :cond_6

    .line 735
    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 741
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    if-ne p2, v1, :cond_1

    .line 742
    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2
.end method

.method public invalidate()V
    .locals 4

    .prologue
    .line 881
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionTextLeftPosition()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionTextRightPosition()I

    move-result v0

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    if-eq v0, v1, :cond_1

    .line 888
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRelayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 889
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRelayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_1
    invoke-super {p0}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mForceIsFocused:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 973
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 974
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 975
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 976
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1800(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1800(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 979
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 980
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 906
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mForceIsFocused:Z

    .line 907
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 908
    iput-boolean v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mForceIsFocused:Z

    .line 909
    return-object v0

    :cond_0
    move v0, v1

    .line 906
    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 985
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 986
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1800(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1800(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 989
    :cond_2
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 991
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 992
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 689
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 691
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 696
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionIconLeftPosition()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconLeft:I

    .line 697
    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconLeft:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 700
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 701
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 704
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 756
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mLocationBar:Lorg/chromium/chrome/browser/omnibox/LocationBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1800(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/LocationBar;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBar;->getContainerView()Landroid/view/View;

    move-result-object v2

    .line 757
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 758
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    sget v0, Lorg/chromium/chrome/R$id;->url_bar:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/omnibox/UrlBar;

    # setter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1902(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Lorg/chromium/chrome/browser/omnibox/UrlBar;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    .line 759
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mUrlBar:Lorg/chromium/chrome/browser/omnibox/UrlBar;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1900(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/UrlBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/chrome/browser/omnibox/UrlBar;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 761
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 762
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    sget v0, Lorg/chromium/chrome/R$id;->navigation_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    # setter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v3, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1702(Lorg/chromium/chrome/browser/omnibox/SuggestionView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 764
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 768
    :cond_1
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionTextLeftPosition()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    .line 769
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionTextRightPosition()I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    .line 770
    invoke-static {p0}, Lorg/chromium/base/ApiCompatibilityUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    .line 771
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    if-eqz v2, :cond_4

    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    .line 773
    :goto_0
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;
    invoke-static {v3}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    move-result-object v3

    invoke-interface {v3}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->getMaxRequiredWidth()F

    move-result v3

    .line 774
    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionDelegate:Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;
    invoke-static {v4}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1300(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;

    move-result-object v4

    invoke-interface {v4}, Lorg/chromium/chrome/browser/omnibox/OmniboxResultsAdapter$OmniboxSuggestionDelegate;->getMaxMatchContentsWidth()F

    move-result v4

    .line 775
    int-to-float v5, v0

    cmpl-float v3, v5, v3

    if-lez v3, :cond_5

    iget v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRequiredWidth:F

    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mMatchContentsWidth:F

    sub-float/2addr v0, v3

    .line 778
    :goto_1
    iget-object v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    float-to-int v0, v0

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-static {v3, v0, v4, v1, v5}, Lorg/chromium/base/ApiCompatibilityUtils;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 784
    :cond_2
    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImageMaxSize:I

    .line 786
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    if-lez v3, :cond_7

    .line 787
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 788
    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 790
    :goto_2
    if-eqz v2, :cond_6

    .line 791
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    iget v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    invoke-virtual {v2, v1, p3, v4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 792
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    iget v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    sub-int/2addr v4, v3

    iget v5, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    invoke-virtual {v2, v4, p3, v5, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 793
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    iget v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    add-int/2addr v0, v3

    sub-int v0, v4, v0

    invoke-virtual {v2, v1, p3, v0, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 800
    :goto_3
    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionIconLeftPosition()I

    move-result v0

    .line 801
    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconLeft:I

    if-eq v1, v0, :cond_3

    iget v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconLeft:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_3

    .line 803
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mContentsView:Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;
    invoke-static {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1000(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->postInvalidateOnAnimation()V

    .line 805
    :cond_3
    iput v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconLeft:I

    .line 806
    return-void

    .line 772
    :cond_4
    sub-int v0, p4, p2

    iget v3, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    sub-int/2addr v0, v3

    goto/16 :goto_0

    .line 775
    :cond_5
    int-to-float v0, v0

    sub-float/2addr v0, v4

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 795
    :cond_6
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    sub-int v4, p4, p2

    invoke-virtual {v1, v2, p3, v4, p5}, Landroid/widget/TextView;->layout(IIII)V

    .line 796
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mAnswerImage:Landroid/widget/ImageView;

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    iget v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, p3, v4, p5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 797
    iget-object v1, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    sub-int v2, p4, p2

    invoke-virtual {v1, v0, p3, v2, p5}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/high16 v4, -0x80000000

    .line 949
    const/4 v0, 0x0

    .line 950
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mNavigationButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1700(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)Landroid/widget/ImageView;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 951
    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconLeft:I

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionIconLeftPosition()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mSuggestionIconLeft:I

    if-eq v2, v4, :cond_0

    move v0, v1

    .line 965
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRelayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 967
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mRelayoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 969
    :cond_1
    return-void

    .line 956
    :cond_2
    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionTextLeftPosition()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLeft:I

    if-eq v2, v4, :cond_3

    move v0, v1

    .line 960
    :cond_3
    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    invoke-direct {p0}, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->getSuggestionTextRightPosition()I

    move-result v3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextRight:I

    if-eq v2, v4, :cond_0

    move v0, v1

    .line 962
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, -0x80000000

    .line 859
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 861
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 862
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 864
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 866
    :cond_0
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine1:Landroid/widget/TextView;

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionHeight:I
    invoke-static {v4}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1400(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->measure(II)V

    .line 871
    :cond_1
    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 873
    :cond_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->mTextLine2:Landroid/widget/TextView;

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/SuggestionView$SuggestionContentsContainer;->this$0:Lorg/chromium/chrome/browser/omnibox/SuggestionView;

    # getter for: Lorg/chromium/chrome/browser/omnibox/SuggestionView;->mSuggestionHeight:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/SuggestionView;->access$1400(Lorg/chromium/chrome/browser/omnibox/SuggestionView;)I

    move-result v2

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V

    .line 877
    :cond_3
    return-void
.end method
