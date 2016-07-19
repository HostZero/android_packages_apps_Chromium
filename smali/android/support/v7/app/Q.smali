.class final Landroid/support/v7/app/Q;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/internal/widget/y;


# instance fields
.field private synthetic a:Landroid/support/v7/app/N;


# direct methods
.method constructor <init>(Landroid/support/v7/app/N;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Landroid/support/v7/app/Q;->a:Landroid/support/v7/app/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v7/app/Q;->a:Landroid/support/v7/app/N;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Landroid/support/v7/app/N;->c(Landroid/support/v7/app/N;I)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 417
    return-void
.end method
