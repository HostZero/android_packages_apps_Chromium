.class public final Lcom/google/ipc/invalidation/ticl/a/as;
.super Lcom/google/ipc/invalidation/b/n;
.source "JavaClient.java"


# static fields
.field public static final a:Lcom/google/ipc/invalidation/ticl/a/as;


# instance fields
.field private final b:J

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Ljava/util/List;

.field private final f:Ljava/util/List;

.field private final g:Lcom/google/ipc/invalidation/ticl/a/W;

.field private final h:Lcom/google/ipc/invalidation/ticl/a/U;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 43
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/as;

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/a/as;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/U;)V

    sput-object v0, Lcom/google/ipc/invalidation/ticl/a/as;->a:Lcom/google/ipc/invalidation/ticl/a/as;

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/U;)V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/ipc/invalidation/b/n;-><init>()V

    .line 59
    const/4 v0, 0x0

    .line 60
    const-string/jumbo v1, "registration"

    invoke-static {v1, p1}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->c:Ljava/util/List;

    .line 61
    const-string/jumbo v1, "unregistration"

    invoke-static {v1, p2}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->d:Ljava/util/List;

    .line 62
    const-string/jumbo v1, "acknowledgement"

    invoke-static {v1, p3}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->e:Ljava/util/List;

    .line 63
    const-string/jumbo v1, "registration_subtree"

    invoke-static {v1, p4}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->f:Ljava/util/List;

    .line 64
    iput-object p5, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    .line 65
    if-eqz p6, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 67
    iput-object p6, p0, Lcom/google/ipc/invalidation/ticl/a/as;->h:Lcom/google/ipc/invalidation/ticl/a/U;

    .line 71
    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->b:J

    .line 72
    return-void

    .line 69
    :cond_0
    sget-object v1, Lcom/google/ipc/invalidation/ticl/a/U;->a:Lcom/google/ipc/invalidation/ticl/a/U;

    iput-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->h:Lcom/google/ipc/invalidation/ticl/a/U;

    goto :goto_0
.end method

.method static a(Lcom/google/a/a/a/D;)Lcom/google/ipc/invalidation/ticl/a/as;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 141
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 158
    :goto_0
    return-object v0

    .line 142
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v5

    .line 143
    :goto_1
    iget-object v2, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 146
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v5

    .line 147
    :goto_2
    iget-object v3, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/google/ipc/invalidation/ticl/a/aa;->a(Lcom/google/a/a/a/a/s;)Lcom/google/ipc/invalidation/ticl/a/aa;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 150
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v5

    .line 151
    :goto_3
    iget-object v4, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 152
    iget-object v4, p0, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/google/ipc/invalidation/ticl/a/Y;->a(Lcom/google/a/a/a/a/r;)Lcom/google/ipc/invalidation/ticl/a/Y;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 154
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    :goto_4
    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    if-ge v5, v0, :cond_4

    .line 156
    iget-object v0, p0, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/google/ipc/invalidation/ticl/a/aj;->a(Lcom/google/a/a/a/a/B;)Lcom/google/ipc/invalidation/ticl/a/aj;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 158
    :cond_4
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/as;

    iget-object v5, p0, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    invoke-static {v5}, Lcom/google/ipc/invalidation/ticl/a/W;->a(Lcom/google/a/a/a/a/p;)Lcom/google/ipc/invalidation/ticl/a/W;

    move-result-object v5

    iget-object v6, p0, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    invoke-static {v6}, Lcom/google/ipc/invalidation/ticl/a/U;->a(Lcom/google/a/a/a/a/n;)Lcom/google/ipc/invalidation/ticl/a/U;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/a/as;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/U;)V

    goto/16 :goto_0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/U;)Lcom/google/ipc/invalidation/ticl/a/as;
    .locals 7

    .prologue
    .line 40
    new-instance v0, Lcom/google/ipc/invalidation/ticl/a/as;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/ipc/invalidation/ticl/a/as;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/google/ipc/invalidation/ticl/a/W;Lcom/google/ipc/invalidation/ticl/a/U;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/google/ipc/invalidation/b/r;)V
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 116
    const-string/jumbo v0, "<BatcherState:"

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    .line 117
    const-string/jumbo v0, " registration=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 118
    const-string/jumbo v0, " unregistration=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 119
    const-string/jumbo v0, " acknowledgement=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 120
    const-string/jumbo v0, " registration_subtree=["

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/Iterable;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 121
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v0, " initialize_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/as;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string/jumbo v0, " info_message="

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(Ljava/lang/String;)Lcom/google/ipc/invalidation/b/r;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->h:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-virtual {v0, v1}, Lcom/google/ipc/invalidation/b/r;->a(Lcom/google/ipc/invalidation/b/h;)Lcom/google/ipc/invalidation/b/r;

    .line 127
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Lcom/google/ipc/invalidation/b/r;->a(C)Lcom/google/ipc/invalidation/b/r;

    .line 128
    return-void
.end method

.method protected final b()I
    .locals 4

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->b:J

    .line 1214
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    if-eqz v1, :cond_0

    .line 107
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/W;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/as;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/ipc/invalidation/ticl/a/as;->h:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-virtual {v1}, Lcom/google/ipc/invalidation/ticl/a/U;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_1
    return v0
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->e:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->f:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 88
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    instance-of v2, p1, Lcom/google/ipc/invalidation/ticl/a/as;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 90
    :cond_2
    check-cast p1, Lcom/google/ipc/invalidation/ticl/a/as;

    .line 91
    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/as;->b:J

    iget-wide v4, p1, Lcom/google/ipc/invalidation/ticl/a/as;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/as;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/as;->c:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/as;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/as;->d:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/as;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/as;->e:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/as;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/as;->f:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/as;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/ipc/invalidation/ticl/a/as;->h:Lcom/google/ipc/invalidation/ticl/a/U;

    iget-object v3, p1, Lcom/google/ipc/invalidation/ticl/a/as;->h:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-static {v2, v3}, Lcom/google/ipc/invalidation/ticl/a/as;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final f()Lcom/google/ipc/invalidation/ticl/a/W;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    return-object v0
.end method

.method public final g()Lcom/google/ipc/invalidation/ticl/a/U;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->h:Lcom/google/ipc/invalidation/ticl/a/U;

    return-object v0
.end method

.method public final h()Z
    .locals 4

    .prologue
    .line 85
    const-wide/16 v0, 0x1

    iget-wide v2, p0, Lcom/google/ipc/invalidation/ticl/a/as;->b:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Lcom/google/a/a/a/D;
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 171
    new-instance v4, Lcom/google/a/a/a/D;

    invoke-direct {v4}, Lcom/google/a/a/a/D;-><init>()V

    .line 172
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    iput-object v0, v4, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    move v1, v2

    .line 173
    :goto_0
    iget-object v0, v4, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 174
    iget-object v5, v4, Lcom/google/a/a/a/D;->a:[Lcom/google/a/a/a/a/s;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    aput-object v0, v5, v1

    .line 173
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/s;

    iput-object v0, v4, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    move v1, v2

    .line 177
    :goto_1
    iget-object v0, v4, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 178
    iget-object v5, v4, Lcom/google/a/a/a/D;->b:[Lcom/google/a/a/a/a/s;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aa;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aa;->d()Lcom/google/a/a/a/a/s;

    move-result-object v0

    aput-object v0, v5, v1

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/r;

    iput-object v0, v4, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    move v1, v2

    .line 181
    :goto_2
    iget-object v0, v4, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    .line 182
    iget-object v5, v4, Lcom/google/a/a/a/D;->c:[Lcom/google/a/a/a/a/r;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/Y;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/Y;->i()Lcom/google/a/a/a/a/r;

    move-result-object v0

    aput-object v0, v5, v1

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/a/a/a/a/B;

    iput-object v0, v4, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    .line 185
    :goto_3
    iget-object v0, v4, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 186
    iget-object v1, v4, Lcom/google/a/a/a/D;->d:[Lcom/google/a/a/a/a/B;

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ipc/invalidation/ticl/a/aj;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/aj;->a()Lcom/google/a/a/a/a/B;

    move-result-object v0

    aput-object v0, v1, v2

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->g:Lcom/google/ipc/invalidation/ticl/a/W;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/W;->a()Lcom/google/a/a/a/a/p;

    move-result-object v0

    :goto_4
    iput-object v0, v4, Lcom/google/a/a/a/D;->e:Lcom/google/a/a/a/a/p;

    .line 189
    invoke-virtual {p0}, Lcom/google/ipc/invalidation/ticl/a/as;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ipc/invalidation/ticl/a/as;->h:Lcom/google/ipc/invalidation/ticl/a/U;

    invoke-virtual {v0}, Lcom/google/ipc/invalidation/ticl/a/U;->a()Lcom/google/a/a/a/a/n;

    move-result-object v3

    :cond_4
    iput-object v3, v4, Lcom/google/a/a/a/D;->f:Lcom/google/a/a/a/a/n;

    .line 190
    return-object v4

    :cond_5
    move-object v0, v3

    .line 188
    goto :goto_4
.end method
