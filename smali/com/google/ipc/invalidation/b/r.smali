.class public final Lcom/google/ipc/invalidation/b/r;
.super Ljava/lang/Object;
.source "TextBuilder.java"


# instance fields
.field private final a:Ljava/lang/StringBuilder;

.field private final b:Lcom/google/ipc/invalidation/b/s;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    .line 83
    new-instance v0, Lcom/google/ipc/invalidation/b/s;

    iget-object v1, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lcom/google/ipc/invalidation/b/s;-><init>(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lcom/google/ipc/invalidation/b/r;->b:Lcom/google/ipc/invalidation/b/s;

    .line 84
    return-void
.end method


# virtual methods
.method public final a(C)Lcom/google/ipc/invalidation/b/r;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    return-object p0
.end method

.method public final a(I)Lcom/google/ipc/invalidation/b/r;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    return-object p0
.end method

.method public final a(J)Lcom/google/ipc/invalidation/b/r;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    return-object p0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;
    .locals 1

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object p0

    .line 127
    :goto_0
    return-object p0

    .line 126
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/ipc/invalidation/b/h;->a(Lcom/google/ipc/invalidation/b/r;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;
    .locals 5

    .prologue
    .line 135
    if-nez p1, :cond_1

    .line 147
    :cond_0
    return-object p0

    .line 138
    :cond_1
    const/4 v0, 0x1

    .line 139
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/b/h;

    .line 140
    if-eqz v1, :cond_2

    .line 141
    const/4 v1, 0x0

    .line 145
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    goto :goto_0

    .line 143
    :cond_2
    iget-object v3, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/r;
    .locals 1

    .prologue
    .line 110
    instance-of v0, p1, Lcom/google/ipc/invalidation/b/h;

    if-eqz v0, :cond_0

    .line 111
    check-cast p1, Lcom/google/ipc/invalidation/b/h;

    invoke-virtual {p0, p1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    move-result-object p0

    .line 114
    :goto_0
    return-object p0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    return-object p0
.end method

.method public final varargs a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/google/ipc/invalidation/b/r;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/r;->b:Lcom/google/ipc/invalidation/b/s;

    invoke-virtual {v0, p1, p2}, Lcom/google/ipc/invalidation/b/s;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-object p0
.end method

.method public final a(Z)Lcom/google/ipc/invalidation/b/r;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/ipc/invalidation/b/r;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
