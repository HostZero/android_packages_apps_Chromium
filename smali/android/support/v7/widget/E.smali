.class public Landroid/support/v7/widget/E;
.super Landroid/widget/SeekBar;
.source "AppCompatSeekBar.java"


# instance fields
.field private a:Landroid/support/v7/widget/F;

.field private b:Landroid/support/v7/internal/widget/L;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const v0, 0x7f0100cd

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {p1}, Landroid/support/v7/internal/widget/L;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/L;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/E;->b:Landroid/support/v7/internal/widget/L;

    .line 49
    new-instance v0, Landroid/support/v7/widget/F;

    iget-object v1, p0, Landroid/support/v7/widget/E;->b:Landroid/support/v7/internal/widget/L;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/F;-><init>(Landroid/widget/SeekBar;Landroid/support/v7/internal/widget/L;)V

    iput-object v0, p0, Landroid/support/v7/widget/E;->a:Landroid/support/v7/widget/F;

    .line 50
    iget-object v0, p0, Landroid/support/v7/widget/E;->a:Landroid/support/v7/widget/F;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/F;->a(Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method
