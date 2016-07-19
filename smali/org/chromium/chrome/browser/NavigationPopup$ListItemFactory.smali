.class Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;
.super Ljava/lang/Object;
.source "NavigationPopup.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mFadeEdgeLength:I

.field mFadePadding:I

.field mIsLayoutDirectionRTL:Z

.field mListItemHeight:I

.field mPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mContext:Landroid/content/Context;

    .line 201
    invoke-direct {p0}, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->computeFadeDimensions()V

    .line 202
    return-void
.end method

.method private computeFadeDimensions()V
    .locals 3

    .prologue
    .line 207
    iget-object v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 208
    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v1, v0

    .line 209
    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadeEdgeLength:I

    .line 210
    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadePadding:I

    .line 211
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mListItemHeight:I

    .line 212
    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    .line 213
    invoke-static {}, Lorg/chromium/ui/base/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mIsLayoutDirectionRTL:Z

    .line 214
    return-void
.end method


# virtual methods
.method public createListItem()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 217
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 218
    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadeEdgeLength:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFadingEdgeLength(I)V

    .line 219
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 220
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 221
    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 222
    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mListItemHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 223
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 224
    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 225
    iget-boolean v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mIsLayoutDirectionRTL:Z

    if-nez v1, :cond_0

    .line 226
    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    iget v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    iget v3, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadePadding:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 230
    :goto_0
    return-object v0

    .line 228
    :cond_0
    iget v1, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    iget v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mFadePadding:I

    add-int/2addr v1, v2

    iget v2, p0, Lorg/chromium/chrome/browser/NavigationPopup$ListItemFactory;->mPadding:I

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method
