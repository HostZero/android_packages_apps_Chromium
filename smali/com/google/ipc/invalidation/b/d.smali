.class final Lcom/google/ipc/invalidation/b/d;
.super Ljava/lang/Object;
.source "Bytes.java"

# interfaces
.implements Lcom/google/ipc/invalidation/b/f;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;I)B
    .locals 1

    .prologue
    .line 46
    check-cast p1, [B

    .line 1052
    aget-byte v0, p1, p2

    .line 46
    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 46
    check-cast p1, [B

    .line 2048
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p1

    goto :goto_0
.end method
