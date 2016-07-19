.class final Landroid/support/v7/widget/F;
.super Landroid/support/v7/widget/B;
.source "AppCompatSeekBarHelper.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010142

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/F;->a:[I

    return-void
.end method

.method constructor <init>(Landroid/widget/SeekBar;Landroid/support/v7/internal/widget/L;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/B;-><init>(Landroid/widget/ProgressBar;Landroid/support/v7/internal/widget/L;)V

    .line 35
    iput-object p1, p0, Landroid/support/v7/widget/F;->b:Landroid/widget/SeekBar;

    .line 36
    return-void
.end method


# virtual methods
.method final a(Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/B;->a(Landroid/util/AttributeSet;I)V

    .line 41
    iget-object v0, p0, Landroid/support/v7/widget/F;->b:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/widget/F;->a:[I

    invoke-static {v0, p1, v1, p2, v2}, Landroid/support/v7/internal/widget/N;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/N;

    move-result-object v0

    .line 43
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/N;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    iget-object v2, p0, Landroid/support/v7/widget/F;->b:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/N;->a()V

    .line 48
    return-void
.end method
