.class public final Landroid/support/v4/view/a/s;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput-object p1, p0, Landroid/support/v4/view/a/s;->a:Ljava/lang/Object;

    .line 429
    return-void
.end method

.method public static a(IIIIZZ)Landroid/support/v4/view/a/s;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 423
    new-instance v7, Landroid/support/v4/view/a/s;

    invoke-static {}, Landroid/support/v4/view/a/h;->q()Landroid/support/v4/view/a/m;

    move-result-object v0

    move v1, p0

    move v3, p2

    move v4, v2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/view/a/m;->a(IIIIZZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/support/v4/view/a/s;-><init>(Ljava/lang/Object;)V

    return-object v7
.end method

.method static synthetic a(Landroid/support/v4/view/a/s;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/support/v4/view/a/s;->a:Ljava/lang/Object;

    return-object v0
.end method
