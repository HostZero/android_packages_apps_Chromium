.class public final Landroid/support/v7/widget/u;
.super Landroid/widget/CheckedTextView;
.source "AppCompatCheckedTextView.java"


# static fields
.field private static final a:[I


# instance fields
.field private b:Landroid/support/v7/internal/widget/L;

.field private c:Landroid/support/v7/widget/M;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/u;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x10103c8

    .line 50
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-static {p0}, Landroid/support/v7/widget/M;->a(Landroid/widget/TextView;)Landroid/support/v7/widget/M;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/u;->c:Landroid/support/v7/widget/M;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/u;->c:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p2, v2}, Landroid/support/v7/widget/M;->a(Landroid/util/AttributeSet;I)V

    .line 54
    iget-object v0, p0, Landroid/support/v7/widget/u;->c:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 56
    sget-boolean v0, Landroid/support/v7/internal/widget/L;->a:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/support/v7/widget/u;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/u;->a:[I

    invoke-static {v0, p2, v1, v2, v3}, Landroid/support/v7/internal/widget/N;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/N;

    move-result-object v0

    .line 59
    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/u;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/N;->a()V

    .line 62
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/N;->b()Landroid/support/v7/internal/widget/L;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/internal/widget/L;

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    .line 86
    iget-object v0, p0, Landroid/support/v7/widget/u;->c:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Landroid/support/v7/widget/u;->c:Landroid/support/v7/widget/M;

    invoke-virtual {v0}, Landroid/support/v7/widget/M;->a()V

    .line 89
    :cond_0
    return-void
.end method

.method public final setCheckMarkDrawable(I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/internal/widget/L;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/u;->b:Landroid/support/v7/internal/widget/L;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/L;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/u;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(I)V

    goto :goto_0
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 78
    iget-object v0, p0, Landroid/support/v7/widget/u;->c:Landroid/support/v7/widget/M;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/support/v7/widget/u;->c:Landroid/support/v7/widget/M;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/M;->a(Landroid/content/Context;I)V

    .line 81
    :cond_0
    return-void
.end method
