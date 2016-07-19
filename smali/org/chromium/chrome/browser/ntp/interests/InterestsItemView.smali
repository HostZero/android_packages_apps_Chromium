.class Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;
.super Landroid/support/v7/widget/O;
.source "InterestsItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final COLORS:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

.field private final mImageCache:Landroid/util/LruCache;

.field private mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

.field private final mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->COLORS:[I

    return-void

    :array_0
    .array-data 4
        -0xe9c9c
        -0xa7aa7
        -0x65bc2
        -0x1b39d2
        -0x98408c
        -0xa65d42
        -0xdf6c33
        -0x529d59
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;Landroid/util/LruCache;Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0, p1}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;)V

    .line 99
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mContext:Landroid/content/Context;

    .line 100
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    .line 101
    iput-object p4, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mImageCache:Landroid/util/LruCache;

    .line 102
    iput-object p5, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    .line 104
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mTextSize:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->access$000(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setTextSize(IF)V

    .line 105
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mMinHeight:I
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->access$100(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setMinimumHeight(I)V

    .line 106
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setGravity(I)V

    .line 107
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setTextAlignment(I)V

    .line 109
    invoke-virtual {p0, p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0, p2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->reset(Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;)V

    .line 112
    return-void
.end method

.method static synthetic access$500(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;)Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    return-object v0
.end method

.method static synthetic access$600(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setImage(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getTileColor(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 178
    sget-object v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->COLORS:[I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sget-object v2, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->COLORS:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 171
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageSize:I
    invoke-static {v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->access$400(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mImageSize:I
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->access$400(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)I

    move-result v2

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 172
    invoke-virtual {p0, v3, p1, v3, v3}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;->onInterestClicked(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public reset(Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;)V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->jumpDrawablesToCurrentState()V

    .line 124
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    .line 154
    :goto_0
    return-void

    .line 131
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    .line 133
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mImageCache:Landroid/util/LruCache;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;

    .line 136
    if-nez v0, :cond_1

    .line 138
    new-instance v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;

    invoke-direct {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;-><init>()V

    .line 139
    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mImageCache:Landroid/util/LruCache;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v1, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;-><init>(Ljava/lang/String;Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;Landroid/content/res/Resources;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 143
    :cond_1
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 147
    :cond_2
    new-instance v1, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;-><init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$1;)V

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->addListener(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;)V

    .line 150
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->access$300(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->getTileColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->setBackgroundColor(I)V

    .line 151
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->mIconGenerator:Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;
    invoke-static {v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;->access$300(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;

    move-result-object v2

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->mInterest:Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    invoke-virtual {v3}, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/chromium/chrome/browser/widget/RoundedIconGenerator;->generateIconForText(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
