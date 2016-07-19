.class final Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;
.super Ljava/lang/Object;
.source "InterestsItemView.java"


# instance fields
.field private final mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

.field private final mImageSize:I

.field private final mImageTextSize:I

.field private final mMinHeight:I

.field private final mPadding:I

.field private final mTextSize:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    sget v1, Lorg/chromium/chrome/R$dimen;->ntp_list_item_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mPadding:I

    .line 72
    sget v1, Lorg/chromium/chrome/R$dimen;->ntp_interest_item_min_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mMinHeight:I

    .line 73
    sget v1, Lorg/chromium/chrome/R$dimen;->ntp_interest_item_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mTextSize:I

    .line 74
    sget v1, Lorg/chromium/chrome/R$dimen;->ntp_interest_item_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageSize:I

    .line 75
    sget v1, Lorg/chromium/chrome/R$dimen;->ntp_interest_item_image_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageTextSize:I

    .line 76
    new-instance v0, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    iget v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageSize:I

    iget v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageSize:I

    iget v3, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageSize:I

    div-int/lit8 v3, v3, 0x2

    const v4, -0x777778

    iget v5, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageTextSize:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;-><init>(IIIIF)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mTextSize:I

    return v0
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mMinHeight:I

    return v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    return-object v0
.end method

.method static synthetic access$400(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageSize:I

    return v0
.end method
