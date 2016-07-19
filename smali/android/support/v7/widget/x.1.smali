.class public final Landroid/support/v7/widget/x;
.super Landroid/widget/ImageButton;
.source "AppCompatImageButton.java"

# interfaces
.implements Landroid/support/v4/view/W;


# instance fields
.field private a:Landroid/support/v7/widget/r;

.field private b:Landroid/support/v7/widget/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0100a2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-static {p1}, Landroid/support/v7/internal/widget/L;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/L;

    move-result-object v0

    .line 64
    new-instance v1, Landroid/support/v7/widget/r;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/r;-><init>(Landroid/view/View;Landroid/support/v7/internal/widget/L;)V

    iput-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    .line 65
    iget-object v1, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v1, p2, p3}, Landroid/support/v7/widget/r;->a(Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v1, Landroid/support/v7/widget/y;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/y;-><init>(Landroid/widget/ImageView;Landroid/support/v7/internal/widget/L;)V

    iput-object v1, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/y;

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/y;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/y;->a(Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    .line 148
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->b()V

    .line 151
    :cond_0
    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0}, Landroid/support/v7/widget/r;->a()V

    .line 91
    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/support/v7/widget/x;->b:Landroid/support/v7/widget/y;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/y;->a(I)V

    .line 75
    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/content/res/ColorStateList;)V

    .line 104
    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/support/v7/widget/x;->a:Landroid/support/v7/widget/r;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/r;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 130
    :cond_0
    return-void
.end method
