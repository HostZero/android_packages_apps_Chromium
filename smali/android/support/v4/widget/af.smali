.class final Landroid/support/v4/widget/af;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"


# instance fields
.field private synthetic a:I

.field private synthetic b:I

.field private synthetic c:Landroid/support/v4/widget/ab;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ab;II)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Landroid/support/v4/widget/af;->c:Landroid/support/v4/widget/ab;

    iput p2, p0, Landroid/support/v4/widget/af;->a:I

    iput p3, p0, Landroid/support/v4/widget/af;->b:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v4/widget/af;->c:Landroid/support/v4/widget/ab;

    # getter for: Landroid/support/v4/widget/ab;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
    invoke-static {v0}, Landroid/support/v4/widget/ab;->access$100(Landroid/support/v4/widget/ab;)Landroid/support/v4/widget/MaterialProgressDrawable;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/widget/af;->a:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/af;->b:I

    iget v3, p0, Landroid/support/v4/widget/af;->a:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V

    .line 458
    return-void
.end method