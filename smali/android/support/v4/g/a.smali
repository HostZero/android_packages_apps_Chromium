.class public Landroid/support/v4/g/a;
.super Landroid/support/v4/g/o;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field private c:Landroid/support/v4/g/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/support/v4/g/o;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/support/v4/g/o;-><init>(I)V

    .line 62
    return-void
.end method

.method private a()Landroid/support/v4/g/h;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/g/a;->c:Landroid/support/v4/g/h;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/support/v4/g/b;

    invoke-direct {v0, p0}, Landroid/support/v4/g/b;-><init>(Landroid/support/v4/g/a;)V

    iput-object v0, p0, Landroid/support/v4/g/a;->c:Landroid/support/v4/g/h;

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/support/v4/g/a;->c:Landroid/support/v4/g/h;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 161
    invoke-static {p0, p1}, Landroid/support/v4/g/h;->a(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/support/v4/g/a;->a()Landroid/support/v4/g/h;

    move-result-object v0

    .line 1529
    iget-object v1, v0, Landroid/support/v4/g/h;->a:Landroid/support/v4/g/j;

    if-nez v1, :cond_0

    .line 1530
    new-instance v1, Landroid/support/v4/g/j;

    invoke-direct {v1, v0}, Landroid/support/v4/g/j;-><init>(Landroid/support/v4/g/h;)V

    iput-object v1, v0, Landroid/support/v4/g/h;->a:Landroid/support/v4/g/j;

    .line 1532
    :cond_0
    iget-object v0, v0, Landroid/support/v4/g/h;->a:Landroid/support/v4/g/j;

    .line 179
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 191
    invoke-direct {p0}, Landroid/support/v4/g/a;->a()Landroid/support/v4/g/h;

    move-result-object v0

    .line 1536
    iget-object v1, v0, Landroid/support/v4/g/h;->b:Landroid/support/v4/g/k;

    if-nez v1, :cond_0

    .line 1537
    new-instance v1, Landroid/support/v4/g/k;

    invoke-direct {v1, v0}, Landroid/support/v4/g/k;-><init>(Landroid/support/v4/g/h;)V

    iput-object v1, v0, Landroid/support/v4/g/h;->b:Landroid/support/v4/g/k;

    .line 1539
    :cond_0
    iget-object v0, v0, Landroid/support/v4/g/h;->b:Landroid/support/v4/g/k;

    .line 191
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 139
    iget v0, p0, Landroid/support/v4/g/a;->b:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/support/v4/g/a;->a(I)V

    .line 140
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/support/v4/g/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Landroid/support/v4/g/a;->a()Landroid/support/v4/g/h;

    move-result-object v0

    .line 1543
    iget-object v1, v0, Landroid/support/v4/g/h;->c:Landroid/support/v4/g/m;

    if-nez v1, :cond_0

    .line 1544
    new-instance v1, Landroid/support/v4/g/m;

    invoke-direct {v1, v0}, Landroid/support/v4/g/m;-><init>(Landroid/support/v4/g/h;)V

    iput-object v1, v0, Landroid/support/v4/g/h;->c:Landroid/support/v4/g/m;

    .line 1546
    :cond_0
    iget-object v0, v0, Landroid/support/v4/g/h;->c:Landroid/support/v4/g/m;

    .line 203
    return-object v0
.end method
