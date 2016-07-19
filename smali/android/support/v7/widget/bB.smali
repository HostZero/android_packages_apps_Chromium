.class final Landroid/support/v7/widget/bB;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# static fields
.field private static d:Landroid/support/customtabs/a;


# instance fields
.field a:I

.field b:Landroid/support/v7/widget/aK;

.field c:Landroid/support/v7/widget/aK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 269
    new-instance v0, Landroid/support/customtabs/a;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/customtabs/a;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/bB;->d:Landroid/support/customtabs/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method static a()Landroid/support/v7/widget/bB;
    .locals 1

    .prologue
    .line 275
    sget-object v0, Landroid/support/v7/widget/bB;->d:Landroid/support/customtabs/a;

    invoke-virtual {v0}, Landroid/support/customtabs/a;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bB;

    .line 276
    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/bB;

    invoke-direct {v0}, Landroid/support/v7/widget/bB;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Landroid/support/v7/widget/bB;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 280
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bB;->a:I

    .line 281
    iput-object v1, p0, Landroid/support/v7/widget/bB;->b:Landroid/support/v7/widget/aK;

    .line 282
    iput-object v1, p0, Landroid/support/v7/widget/bB;->c:Landroid/support/v7/widget/aK;

    .line 283
    sget-object v0, Landroid/support/v7/widget/bB;->d:Landroid/support/customtabs/a;

    invoke-virtual {v0, p0}, Landroid/support/customtabs/a;->release(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method static b()V
    .locals 1

    .prologue
    .line 288
    :cond_0
    sget-object v0, Landroid/support/v7/widget/bB;->d:Landroid/support/customtabs/a;

    invoke-virtual {v0}, Landroid/support/customtabs/a;->acquire()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 289
    return-void
.end method
