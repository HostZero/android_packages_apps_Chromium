.class public final Lcom/google/vrtoolkit/cardboard/e;
.super Ljava/lang/Object;
.source "HeadMountedDisplay.java"


# instance fields
.field private a:Lcom/google/vrtoolkit/cardboard/i;

.field private b:Lcom/google/vrtoolkit/cardboard/a;


# direct methods
.method public constructor <init>(Lcom/google/vrtoolkit/cardboard/i;Lcom/google/vrtoolkit/cardboard/a;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/vrtoolkit/cardboard/e;->a:Lcom/google/vrtoolkit/cardboard/i;

    .line 39
    iput-object p2, p0, Lcom/google/vrtoolkit/cardboard/e;->b:Lcom/google/vrtoolkit/cardboard/a;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/vrtoolkit/cardboard/i;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/e;->a:Lcom/google/vrtoolkit/cardboard/i;

    return-object v0
.end method

.method public final b()Lcom/google/vrtoolkit/cardboard/a;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/vrtoolkit/cardboard/e;->b:Lcom/google/vrtoolkit/cardboard/a;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    instance-of v2, p1, Lcom/google/vrtoolkit/cardboard/e;

    if-eqz v2, :cond_0

    .line 105
    check-cast p1, Lcom/google/vrtoolkit/cardboard/e;

    .line 107
    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/e;->a:Lcom/google/vrtoolkit/cardboard/i;

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/e;->a:Lcom/google/vrtoolkit/cardboard/i;

    invoke-virtual {v2, v3}, Lcom/google/vrtoolkit/cardboard/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/vrtoolkit/cardboard/e;->b:Lcom/google/vrtoolkit/cardboard/a;

    iget-object v3, p1, Lcom/google/vrtoolkit/cardboard/e;->b:Lcom/google/vrtoolkit/cardboard/a;

    .line 108
    invoke-virtual {v2, v3}, Lcom/google/vrtoolkit/cardboard/a;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
