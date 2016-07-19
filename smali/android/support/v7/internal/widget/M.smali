.class final Landroid/support/v7/internal/widget/M;
.super Landroid/support/v4/g/g;
.source "TintManager.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 577
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/support/v4/g/g;-><init>(I)V

    .line 578
    return-void
.end method

.method private static b(ILandroid/graphics/PorterDuff$Mode;)I
    .locals 2

    .prologue
    .line 590
    add-int/lit8 v0, p0, 0x1f

    .line 591
    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p1}, Landroid/graphics/PorterDuff$Mode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 592
    return v0
.end method


# virtual methods
.method final a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 581
    invoke-static {p1, p2}, Landroid/support/v7/internal/widget/M;->b(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/M;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method

.method final a(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    .prologue
    .line 585
    invoke-static {p1, p2}, Landroid/support/v7/internal/widget/M;->b(ILandroid/graphics/PorterDuff$Mode;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/support/v7/internal/widget/M;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PorterDuffColorFilter;

    return-object v0
.end method
