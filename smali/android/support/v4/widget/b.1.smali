.class Landroid/support/v4/widget/b;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"


# instance fields
.field private a:I

.field private b:I

.field private c:F

.field private d:F

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:J

.field private j:F

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1744
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v4/widget/b;->e:J

    .line 1745
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/b;->i:J

    .line 1746
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/b;->f:J

    .line 1747
    iput v2, p0, Landroid/support/v4/widget/b;->g:I

    .line 1748
    iput v2, p0, Landroid/support/v4/widget/b;->h:I

    .line 1749
    return-void
.end method

.method private a(J)F
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1787
    iget-wide v2, p0, Landroid/support/v4/widget/b;->e:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 1794
    :goto_0
    return v0

    .line 1789
    :cond_0
    iget-wide v2, p0, Landroid/support/v4/widget/b;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    iget-wide v2, p0, Landroid/support/v4/widget/b;->i:J

    cmp-long v1, p1, v2

    if-gez v1, :cond_2

    .line 1790
    :cond_1
    iget-wide v2, p0, Landroid/support/v4/widget/b;->e:J

    sub-long v2, p1, v2

    .line 1791
    const/high16 v1, 0x3f000000    # 0.5f

    long-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/b;->a:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v0, v6}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    mul-float/2addr v0, v1

    goto :goto_0

    .line 1793
    :cond_2
    iget-wide v2, p0, Landroid/support/v4/widget/b;->i:J

    sub-long v2, p1, v2

    .line 1794
    iget v1, p0, Landroid/support/v4/widget/b;->j:F

    sub-float v1, v6, v1

    iget v4, p0, Landroid/support/v4/widget/b;->j:F

    long-to-float v2, v2

    iget v3, p0, Landroid/support/v4/widget/b;->k:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2, v0, v6}, Landroid/support/v4/widget/a;->a(FFF)F

    move-result v0

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;F)Z
    .locals 1

    .prologue
    .line 3046
    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 3047
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1763
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/b;->e:J

    .line 1764
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v4/widget/b;->i:J

    .line 1765
    iget-wide v0, p0, Landroid/support/v4/widget/b;->e:J

    iput-wide v0, p0, Landroid/support/v4/widget/b;->f:J

    .line 1766
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/support/v4/widget/b;->j:F

    .line 1767
    iput v2, p0, Landroid/support/v4/widget/b;->g:I

    .line 1768
    iput v2, p0, Landroid/support/v4/widget/b;->h:I

    .line 1769
    return-void
.end method

.method public a(FF)V
    .locals 0

    .prologue
    .line 2839
    iput p1, p0, Landroid/support/v4/widget/b;->c:F

    .line 2840
    iput p2, p0, Landroid/support/v4/widget/b;->d:F

    .line 2841
    return-void
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 1752
    iput p1, p0, Landroid/support/v4/widget/b;->a:I

    .line 1753
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 1775
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1776
    iget-wide v2, p0, Landroid/support/v4/widget/b;->e:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    const/4 v3, 0x0

    iget v4, p0, Landroid/support/v4/widget/b;->b:I

    invoke-static {v2, v3, v4}, Landroid/support/v4/widget/a;->a(III)I

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/b;->k:I

    .line 1777
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/b;->a(J)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/b;->j:F

    .line 1778
    iput-wide v0, p0, Landroid/support/v4/widget/b;->i:J

    .line 1779
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 1756
    iput p1, p0, Landroid/support/v4/widget/b;->b:I

    .line 1757
    return-void
.end method

.method public c()Z
    .locals 6

    .prologue
    .line 1782
    iget-wide v0, p0, Landroid/support/v4/widget/b;->i:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/b;->i:J

    iget v4, p0, Landroid/support/v4/widget/b;->k:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    .line 1818
    iget-wide v0, p0, Landroid/support/v4/widget/b;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1819
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot compute scroll delta before calling start()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1822
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1823
    invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/b;->a(J)F

    move-result v2

    .line 2807
    const/high16 v3, -0x3f800000    # -4.0f

    mul-float/2addr v3, v2

    mul-float/2addr v3, v2

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    .line 1825
    iget-wide v4, p0, Landroid/support/v4/widget/b;->f:J

    sub-long v4, v0, v4

    .line 1827
    iput-wide v0, p0, Landroid/support/v4/widget/b;->f:J

    .line 1828
    long-to-float v0, v4

    mul-float/2addr v0, v2

    iget v1, p0, Landroid/support/v4/widget/b;->c:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/b;->g:I

    .line 1829
    long-to-float v0, v4

    mul-float/2addr v0, v2

    iget v1, p0, Landroid/support/v4/widget/b;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/widget/b;->h:I

    .line 1830
    return-void
.end method

.method public e()I
    .locals 2

    .prologue
    .line 2844
    iget v0, p0, Landroid/support/v4/widget/b;->c:F

    iget v1, p0, Landroid/support/v4/widget/b;->c:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public f()I
    .locals 2

    .prologue
    .line 2848
    iget v0, p0, Landroid/support/v4/widget/b;->d:F

    iget v1, p0, Landroid/support/v4/widget/b;->d:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 2864
    iget v0, p0, Landroid/support/v4/widget/b;->h:I

    return v0
.end method
