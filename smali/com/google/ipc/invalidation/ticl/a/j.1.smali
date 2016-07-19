.class public final Lcom/google/ipc/invalidation/ticl/a/j;
.super Lcom/google/ipc/invalidation/b/n;
.source "AndroidService.java"


# instance fields
.field private final a:Lcom/google/ipc/invalidation/ticl/a/ar;

.field private final b:Lcom/google/ipc/invalidation/ticl/a/at;

.field private final c:Lcom/google/ipc/invalidation/ticl/a/k;

.field private final d:Ljava/util/List;


# direct methods
.method private constructor <init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/at;Lcom/google/ipc/invalidation/ticl/a/k;Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 1943
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 1944
    const-string/jumbo v0, "version"

    invoke-static {v0, p1}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1945
    iput-object p1, p0, Lcom/google/ipc/invalidation/ticl/a/j;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    .line 1946
    const-string/jumbo v0, "ticl_state"

    invoke-static {v0, p2}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1947
    iput-object p2, p0, Lcom/google/ipc/invalidation/ticl/a/j;->b:Lcom/google/ipc/invalidation/ticl/a/at;

    .line 1948
    const-string/jumbo v0, "metadata"

    invoke-static {v0, p3}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1949
    iput-object p3, p0, Lcom/google/ipc/invalidation/ticl/a/j;->c:Lcom/google/ipc/invalidation/ticl/a/k;

    .line 1950
    const-string/jumbo v0, "scheduled_task"

    invoke-static {v0, p4}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->d:Ljava/util/List;

    .line 1951
    return-void
.end method

.method static a(Lcom/google/a/a/a/j;)Lcom/google/ipc/invalidation/ticl/a/j;
    .locals 5

    .prologue
    .line 2000
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2005
    :goto_0
    return-object v0

    .line 2001
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2002
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2003
    iget-object v2, p0, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/C;->a(Lcom/google/a/a/a/C;)Lcom/google/ipc/invalidation/ticl/a/C;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2002
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2005
    :cond_1
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/j;

    iget-object v2, p0, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/ar;->a(Lcom/google/a/a/a/a/J;)Lcom/google/ipc/invalidation/ticl/a/ar;

    move-result-object v2

    iget-object v3, p0, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/at;->a(Lcom/google/a/a/a/E;)Lcom/google/ipc/invalidation/ticl/a/at;

    move-result-object v3

    iget-object v4, p0, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/k;->a(Lcom/google/a/a/a/k;)Lcom/google/ipc/invalidation/ticl/a/k;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/google/ipc/invalidation/ticl/a/j;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/at;Lcom/google/ipc/invalidation/ticl/a/k;Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/at;Lcom/google/ipc/invalidation/ticl/a/k;Ljava/util/Collection;)Lcom/google/ipc/invalidation/ticl/a/j;
    .locals 1

    .prologue
    .line 1932
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/j;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ipc/invalidation/ticl/a/j;-><init>(Lcom/google/ipc/invalidation/ticl/a/ar;Lcom/google/ipc/invalidation/ticl/a/at;Lcom/google/ipc/invalidation/ticl/a/k;Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/ipc/invalidation/ticl/a/at;
    .locals 1

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->b:Lcom/google/ipc/invalidation/ticl/a/at;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 2

    .prologue
    .line 1981
    const-string/jumbo v0, "<AndroidTiclState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 1982
    const-string/jumbo v0, " version="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/j;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1983
    const-string/jumbo v0, " ticl_state="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/j;->b:Lcom/google/ipc/invalidation/ticl/a/at;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1984
    const-string/jumbo v0, " metadata="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/j;->c:Lcom/google/ipc/invalidation/ticl/a/k;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 1985
    const-string/jumbo v0, " scheduled_task=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/j;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1986
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 1987
    return-void
.end method

.method protected final b()I
    .locals 2

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 1974
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/j;->b:Lcom/google/ipc/invalidation/ticl/a/at;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/at;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1975
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/j;->c:Lcom/google/ipc/invalidation/ticl/a/k;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/k;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1976
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/j;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1977
    return v0
.end method

.method public final c()Lcom/google/ipc/invalidation/ticl/a/k;
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->c:Lcom/google/ipc/invalidation/ticl/a/k;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()[B
    .locals 1

    .prologue
    .line 2012
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/j;->f()Lcom/google/a/a/a/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1962
    if-ne p0, p1, :cond_1

    .line 1965
    :cond_0
    :goto_0
    return v0

    .line 1963
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/j;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1964
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/j;

    .line 1965
    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/j;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/j;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/j;->b:Lcom/google/ipc/invalidation/ticl/a/at;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/j;->b:Lcom/google/ipc/invalidation/ticl/a/at;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/j;->c:Lcom/google/ipc/invalidation/ticl/a/k;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/j;->c:Lcom/google/ipc/invalidation/ticl/a/k;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/j;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/j;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final f()Lcom/google/a/a/a/j;
    .locals 4

    .prologue
    .line 2016
    new-instance v2, Lcom/google/a/a/a/j;

    invoke-direct {v2}, Lcom/google/a/a/a/j;-><init>()V

    .line 2017
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->a:Lcom/google/ipc/invalidation/ticl/a/ar;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/ar;->c()Lcom/google/a/a/a/a/J;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/j;->a:Lcom/google/a/a/a/a/J;

    .line 2018
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->b:Lcom/google/ipc/invalidation/ticl/a/at;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/at;->t()Lcom/google/a/a/a/E;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/j;->b:Lcom/google/a/a/a/E;

    .line 2019
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->c:Lcom/google/ipc/invalidation/ticl/a/k;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/k;->f()Lcom/google/a/a/a/k;

    move-result-object v0

    iput-object v0, v2, Lcom/google/a/a/a/j;->c:Lcom/google/a/a/a/k;

    .line 2020
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/C;

    iput-object v0, v2, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    .line 2021
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, v2, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 2022
    iget-object v3, v2, Lcom/google/a/a/a/j;->d:[Lcom/google/a/a/a/C;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/j;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/C;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/C;->d()Lcom/google/a/a/a/C;

    move-result-object v0

    aput-object v0, v3, v1

    .line 2021
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2024
    :cond_0
    return-object v2
.end method
