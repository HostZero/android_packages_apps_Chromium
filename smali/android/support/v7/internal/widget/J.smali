.class final Landroid/support/v7/internal/widget/J;
.super Landroid/support/v7/internal/widget/B;
.source "TintContextWrapper.java"


# instance fields
.field private final a:Landroid/support/v7/internal/widget/L;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/L;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/B;-><init>(Landroid/content/res/Resources;)V

    .line 62
    iput-object p2, p0, Landroid/support/v7/internal/widget/J;->a:Landroid/support/v7/internal/widget/L;

    .line 63
    return-void
.end method


# virtual methods
.method public final getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/B;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Landroid/support/v7/internal/widget/J;->a:Landroid/support/v7/internal/widget/L;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/internal/widget/L;->a(ILandroid/graphics/drawable/Drawable;)Z

    .line 76
    :cond_0
    return-object v0
.end method
