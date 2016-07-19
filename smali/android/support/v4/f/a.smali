.class public final Landroid/support/v4/f/a;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# static fields
.field private static final a:Landroid/support/v4/f/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 54
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 55
    new-instance v0, Landroid/support/v4/f/e;

    invoke-direct {v0}, Landroid/support/v4/f/e;-><init>()V

    sput-object v0, Landroid/support/v4/f/a;->a:Landroid/support/v4/f/b;

    .line 61
    :goto_0
    return-void

    .line 56
    :cond_0
    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 57
    new-instance v0, Landroid/support/v4/f/d;

    invoke-direct {v0}, Landroid/support/v4/f/d;-><init>()V

    sput-object v0, Landroid/support/v4/f/a;->a:Landroid/support/v4/f/b;

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Landroid/support/v4/f/c;

    invoke-direct {v0}, Landroid/support/v4/f/c;-><init>()V

    sput-object v0, Landroid/support/v4/f/a;->a:Landroid/support/v4/f/b;

    goto :goto_0
.end method

.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/support/v4/f/a;->a:Landroid/support/v4/f/b;

    invoke-interface {v0, p0}, Landroid/support/v4/f/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
