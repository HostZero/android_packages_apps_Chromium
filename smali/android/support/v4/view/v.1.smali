.class public final Landroid/support/v4/view/v;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"


# static fields
.field private static a:Landroid/support/v4/view/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Landroid/support/v4/view/y;

    invoke-direct {v0}, Landroid/support/v4/view/y;-><init>()V

    sput-object v0, Landroid/support/v4/view/v;->a:Landroid/support/v4/view/w;

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 59
    new-instance v0, Landroid/support/v4/view/x;

    invoke-direct {v0}, Landroid/support/v4/view/x;-><init>()V

    sput-object v0, Landroid/support/v4/view/v;->a:Landroid/support/v4/view/w;

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Landroid/support/v4/view/w;

    invoke-direct {v0}, Landroid/support/v4/view/w;-><init>()V

    sput-object v0, Landroid/support/v4/view/v;->a:Landroid/support/v4/view/w;

    goto :goto_0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/support/v4/view/B;)V
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/support/v4/view/v;->a:Landroid/support/v4/view/w;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/w;->a(Landroid/view/LayoutInflater;Landroid/support/v4/view/B;)V

    .line 80
    return-void
.end method
