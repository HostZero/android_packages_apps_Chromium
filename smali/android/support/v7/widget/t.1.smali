.class public final Landroid/support/v7/widget/t;
.super Landroid/widget/CheckBox;
.source "AppCompatCheckBox.java"

# interfaces
.implements Landroid/support/v4/widget/al;


# instance fields
.field private a:Landroid/support/v7/internal/widget/L;

.field private b:Landroid/support/v7/widget/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0100c8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/t;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    invoke-static {p1}, Landroid/support/v7/internal/widget/L;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/L;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/internal/widget/L;

    .line 61
    new-instance v0, Landroid/support/v7/widget/v;

    iget-object v1, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/internal/widget/L;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/v;-><init>(Landroid/widget/CompoundButton;Landroid/support/v7/internal/widget/L;)V

    iput-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    .line 62
    iget-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/v;->a(Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/v;->a(Landroid/content/res/ColorStateList;)V

    .line 97
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/v;->a(Landroid/graphics/PorterDuff$Mode;)V

    .line 120
    :cond_0
    return-void
.end method

.method public final getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Landroid/widget/CheckBox;->getCompoundPaddingLeft()I

    move-result v0

    .line 83
    iget-object v1, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/v;->a(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/internal/widget/L;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/t;->a:Landroid/support/v7/internal/widget/L;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/L;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/t;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    iget-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/support/v7/widget/t;->b:Landroid/support/v7/widget/v;

    invoke-virtual {v0}, Landroid/support/v7/widget/v;->a()V

    .line 71
    :cond_0
    return-void
.end method
