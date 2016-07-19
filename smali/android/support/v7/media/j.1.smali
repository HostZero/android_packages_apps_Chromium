.class final Landroid/support/v7/media/j;
.super Ljava/lang/Object;
.source "MediaRouter.java"

# interfaces
.implements Landroid/support/v7/media/P;
.implements Landroid/support/v7/media/ag;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private final g:Landroid/support/v7/media/U;

.field private final h:Landroid/support/v7/media/q;

.field private final i:Landroid/support/v7/media/l;

.field private final j:Landroid/support/v7/media/W;

.field private final k:Z

.field private l:Landroid/support/v7/media/M;

.field private m:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private n:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field private o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

.field private p:Ljava/util/Map;

.field private q:Landroid/support/v7/media/d;

.field private r:Landroid/support/v7/media/m;

.field private s:Landroid/support/v4/media/session/MediaSessionCompat;

.field private t:Landroid/support/v4/media/session/MediaSessionCompat;

.field private u:Landroid/support/v4/media/session/H;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    .line 1827
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    .line 1828
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/j;->d:Ljava/util/Map;

    .line 1829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    .line 1830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/j;->f:Ljava/util/ArrayList;

    .line 1832
    new-instance v0, Landroid/support/v7/media/U;

    invoke-direct {v0}, Landroid/support/v7/media/U;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    .line 1834
    new-instance v0, Landroid/support/v7/media/q;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/q;-><init>(Landroid/support/v7/media/j;B)V

    iput-object v0, p0, Landroid/support/v7/media/j;->h:Landroid/support/v7/media/q;

    .line 1835
    new-instance v0, Landroid/support/v7/media/l;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/l;-><init>(Landroid/support/v7/media/j;B)V

    iput-object v0, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    .line 1849
    new-instance v0, Landroid/support/v7/media/k;

    invoke-direct {v0, p0}, Landroid/support/v7/media/k;-><init>(Landroid/support/v7/media/j;)V

    iput-object v0, p0, Landroid/support/v7/media/j;->u:Landroid/support/v4/media/session/H;

    .line 1864
    iput-object p1, p0, Landroid/support/v7/media/j;->a:Landroid/content/Context;

    .line 1865
    invoke-static {p1}, Landroid/support/v4/c/a/a;->a(Landroid/content/Context;)Landroid/support/v4/c/a/a;

    .line 1866
    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/support/v4/app/d;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/j;->k:Z

    .line 1873
    invoke-static {p1, p0}, Landroid/support/v7/media/W;->a(Landroid/content/Context;Landroid/support/v7/media/ag;)Landroid/support/v7/media/W;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/j;->j:Landroid/support/v7/media/W;

    .line 1874
    iget-object v0, p0, Landroid/support/v7/media/j;->j:Landroid/support/v7/media/W;

    invoke-virtual {p0, v0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 1875
    return-void
.end method

.method private a(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/b;)I
    .locals 4

    .prologue
    .line 2276
    invoke-virtual {p1, p2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/b;)I

    move-result v0

    .line 2277
    if-eqz v0, :cond_5

    .line 2278
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .line 2279
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2280
    const-string/jumbo v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Route changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v2, 0x103

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2285
    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    .line 2286
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2287
    const-string/jumbo v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Route volume changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_2
    iget-object v1, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v2, 0x104

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2292
    :cond_3
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_5

    .line 2293
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2294
    const-string/jumbo v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Route presentation display changed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_4
    iget-object v1, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v2, 0x105

    invoke-virtual {v1, v2, p1}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2301
    :cond_5
    return v0
.end method

.method static synthetic a(Landroid/support/v7/media/j;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/support/v7/media/j;->s:Landroid/support/v4/media/session/MediaSessionCompat;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/media/j;Landroid/support/v7/media/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1822
    .line 5336
    invoke-virtual {p1}, Landroid/support/v7/media/s;->c()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 5337
    iget-object v1, p0, Landroid/support/v7/media/j;->d:Ljava/util/Map;

    new-instance v2, Landroid/support/v4/g/n;

    invoke-direct {v2, v0, p2}, Landroid/support/v4/g/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1822
    return-object v0
.end method

.method private a(Landroid/support/v7/media/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x2

    .line 2308
    invoke-virtual {p1}, Landroid/support/v7/media/s;->c()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2310
    invoke-direct {p0, v2}, Landroid/support/v7/media/j;->c(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    .line 2311
    iget-object v0, p0, Landroid/support/v7/media/j;->d:Ljava/util/Map;

    new-instance v1, Landroid/support/v4/g/n;

    invoke-direct {v1, v4, p2}, Landroid/support/v4/g/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 2320
    :goto_0
    return-object v0

    .line 2314
    :cond_0
    const-string/jumbo v0, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Either "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " isn\'t unique in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " or we\'re trying to assign a unique ID for an already added route"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2317
    :goto_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "%s_%d"

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2318
    invoke-direct {p0, v3}, Landroid/support/v7/media/j;->c(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    .line 2319
    iget-object v0, p0, Landroid/support/v7/media/j;->d:Ljava/util/Map;

    new-instance v1, Landroid/support/v4/g/n;

    invoke-direct {v1, v4, p2}, Landroid/support/v4/g/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 2320
    goto :goto_0

    .line 2316
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/media/j;Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 2

    .prologue
    .line 1822
    .line 6138
    invoke-direct {p0, p1}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 6139
    if-ltz v0, :cond_0

    .line 6141
    iget-object v1, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/s;

    .line 6142
    invoke-direct {p0, v0, p2}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/s;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 1822
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/media/s;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 12

    .prologue
    .line 2158
    invoke-virtual {p1, p2}, Landroid/support/v7/media/s;->a(Landroid/support/v7/media/MediaRouteProviderDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2161
    const/4 v4, 0x0

    .line 2162
    const/4 v2, 0x0

    .line 2163
    if-eqz p2, :cond_c

    .line 2164
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->isValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2165
    invoke-virtual {p2}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v7

    .line 2167
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 2170
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2171
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2173
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_7

    .line 2174
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/b;

    .line 2175
    invoke-virtual {v0}, Landroid/support/v7/media/b;->a()Ljava/lang/String;

    move-result-object v3

    .line 2176
    invoke-virtual {p1, v3}, Landroid/support/v7/media/s;->a(Ljava/lang/String;)I

    move-result v5

    .line 2177
    if-gez v5, :cond_4

    .line 2179
    invoke-direct {p0, p1, v3}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/s;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2180
    invoke-virtual {v0}, Landroid/support/v7/media/b;->b()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v5, v1

    .line 2181
    :goto_1
    if-eqz v5, :cond_1

    new-instance v1, Landroid/support/v7/media/t;

    invoke-direct {v1, p1, v3, v11}, Landroid/support/v7/media/t;-><init>(Landroid/support/v7/media/s;Ljava/lang/String;Ljava/lang/String;)V

    .line 2183
    :goto_2
    invoke-static {p1}, Landroid/support/v7/media/s;->b(Landroid/support/v7/media/s;)Ljava/util/List;

    move-result-object v11

    add-int/lit8 v3, v4, 0x1

    invoke-interface {v11, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2184
    iget-object v4, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    if-eqz v5, :cond_2

    .line 2187
    new-instance v4, Landroid/support/v4/g/n;

    invoke-direct {v4, v1, v0}, Landroid/support/v4/g/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    move v1, v3

    .line 2173
    :goto_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    move v2, v0

    goto :goto_0

    .line 2180
    :cond_0
    const/4 v1, 0x0

    move v5, v1

    goto :goto_1

    .line 2181
    :cond_1
    new-instance v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-direct {v1, p1, v3, v11}, Landroid/support/v7/media/MediaRouter$RouteInfo;-><init>(Landroid/support/v7/media/s;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2189
    :cond_2
    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/b;)I

    .line 2191
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2192
    const-string/jumbo v0, "MediaRouter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Route added: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v4, 0x101

    invoke-virtual {v0, v4, v1}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    move v0, v2

    move v1, v3

    .line 2197
    goto :goto_3

    :cond_4
    if-ge v5, v4, :cond_5

    .line 2198
    const-string/jumbo v1, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Ignoring route descriptor with duplicate id: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    move v1, v4

    goto :goto_3

    .line 2202
    :cond_5
    invoke-static {p1}, Landroid/support/v7/media/s;->b(Landroid/support/v7/media/s;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2203
    invoke-static {p1}, Landroid/support/v7/media/s;->b(Landroid/support/v7/media/s;)Ljava/util/List;

    move-result-object v11

    add-int/lit8 v3, v4, 0x1

    invoke-static {v11, v5, v4}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 2206
    instance-of v4, v1, Landroid/support/v7/media/t;

    if-eqz v4, :cond_6

    .line 2207
    new-instance v4, Landroid/support/v4/g/n;

    invoke-direct {v4, v1, v0}, Landroid/support/v4/g/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v2

    move v1, v3

    goto :goto_3

    .line 2210
    :cond_6
    invoke-direct {p0, v1, v0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/b;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 2212
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne v1, v0, :cond_12

    .line 2213
    const/4 v0, 0x1

    move v1, v3

    goto/16 :goto_3

    .line 2220
    :cond_7
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/n;

    .line 2221
    iget-object v1, v0, Landroid/support/v4/g/n;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2222
    iget-object v0, v0, Landroid/support/v4/g/n;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/media/b;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/b;)I

    .line 2223
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2224
    const-string/jumbo v0, "MediaRouter"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Route added: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    :cond_8
    iget-object v0, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v5, 0x101

    invoke-virtual {v0, v5, v1}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    goto :goto_4

    .line 2228
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/g/n;

    .line 2229
    iget-object v1, v0, Landroid/support/v4/g/n;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2230
    iget-object v0, v0, Landroid/support/v4/g/n;->b:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/media/b;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/support/v7/media/b;)I

    move-result v0

    if-eqz v0, :cond_a

    .line 2231
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne v1, v0, :cond_a

    .line 2232
    const/4 v2, 0x1

    goto :goto_5

    .line 2237
    :cond_b
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Ignoring invalid provider descriptor: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_c
    invoke-static {p1}, Landroid/support/v7/media/s;->b(Landroid/support/v7/media/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_6
    if-lt v1, v4, :cond_d

    .line 2244
    invoke-static {p1}, Landroid/support/v7/media/s;->b(Landroid/support/v7/media/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2245
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/b;)I

    .line 2247
    iget-object v3, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2242
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_6

    .line 2251
    :cond_d
    invoke-direct {p0, v2}, Landroid/support/v7/media/j;->a(Z)V

    .line 2258
    invoke-static {p1}, Landroid/support/v7/media/s;->b(Landroid/support/v7/media/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_7
    if-lt v1, v4, :cond_f

    .line 2259
    invoke-static {p1}, Landroid/support/v7/media/s;->b(Landroid/support/v7/media/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2260
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2261
    const-string/jumbo v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Route removed: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    :cond_e
    iget-object v2, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v3, 0x102

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2258
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_7

    .line 2267
    :cond_f
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2268
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Provider changed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2270
    :cond_10
    iget-object v0, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v1, 0x203

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2272
    :cond_11
    return-void

    :cond_12
    move v0, v2

    move v1, v3

    goto/16 :goto_3
.end method

.method private a(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2342
    iget-object v0, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/support/v7/media/j;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2343
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Clearing the default route because it is no longer selectable: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2345
    iput-object v5, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2347
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2348
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 3404
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v1

    iget-object v4, p0, Landroid/support/v7/media/j;->j:Landroid/support/v7/media/W;

    if-ne v1, v4, :cond_5

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "DEFAULT_ROUTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    .line 2349
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/support/v7/media/j;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2350
    iput-object v0, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2351
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Found default route: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/support/v7/media/j;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2359
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unselecting the current route because it is no longer selectable: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    invoke-direct {p0, v5, v2}, Landroid/support/v7/media/j;->d(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2364
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_6

    .line 2368
    invoke-direct {p0}, Landroid/support/v7/media/j;->h()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/media/j;->d(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 2374
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v1, v2

    .line 3404
    goto :goto_0

    .line 2370
    :cond_6
    if-eqz p1, :cond_4

    .line 2372
    invoke-direct {p0}, Landroid/support/v7/media/j;->i()V

    goto :goto_1
.end method

.method static synthetic b(Landroid/support/v7/media/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/support/v7/media/j;->a:Landroid/content/Context;

    return-object v0
.end method

.method private static b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .prologue
    .line 2400
    iget-object v0, p0, Landroid/support/v7/media/MediaRouter$RouteInfo;->a:Landroid/support/v7/media/b;

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->c(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/support/v7/media/MediaRouteProvider;)I
    .locals 3

    .prologue
    .line 2147
    iget-object v0, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2148
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2149
    iget-object v0, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/s;

    invoke-static {v0}, Landroid/support/v7/media/s;->a(Landroid/support/v7/media/s;)Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 2153
    :goto_1
    return v0

    .line 2148
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2153
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private c(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 2530
    iget-object v0, p0, Landroid/support/v7/media/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2531
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2532
    iget-object v0, p0, Landroid/support/v7/media/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/r;

    .line 2533
    invoke-virtual {v0}, Landroid/support/v7/media/r;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    move v0, v1

    .line 2537
    :goto_1
    return v0

    .line 2531
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2537
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 2326
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2327
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2328
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2332
    :goto_1
    return v0

    .line 2327
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2332
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic c(Landroid/support/v7/media/j;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/media/j;)Landroid/support/v7/media/l;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    return-object v0
.end method

.method private d(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2410
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v0, p1, :cond_7

    .line 2411
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    .line 2412
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2413
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Route unselected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v1, 0x107

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2417
    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_1

    .line 2418
    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 2419
    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    .line 2420
    iput-object v3, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2422
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/j;->p:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 2423
    iget-object v0, p0, Landroid/support/v7/media/j;->p:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2424
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUnselect()V

    .line 2425
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onRelease()V

    goto :goto_0

    .line 2427
    :cond_2
    iput-object v3, p0, Landroid/support/v7/media/j;->p:Ljava/util/Map;

    .line 2431
    :cond_3
    iput-object p1, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2433
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_6

    .line 2434
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 2436
    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_4

    .line 2437
    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2439
    :cond_4
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2440
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Route selected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    :cond_5
    iget-object v0, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v1, 0x106

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2444
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    instance-of v0, v0, Landroid/support/v7/media/t;

    if-eqz v0, :cond_6

    .line 2445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/j;->p:Ljava/util/Map;

    .line 2446
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    check-cast v0, Landroid/support/v7/media/t;

    .line 2447
    invoke-virtual {v0}, Landroid/support/v7/media/t;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2448
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v2

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/media/MediaRouteProvider;->onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;

    move-result-object v2

    .line 2450
    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 2451
    iget-object v3, p0, Landroid/support/v7/media/j;->p:Ljava/util/Map;

    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2456
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/media/j;->i()V

    .line 2458
    :cond_7
    return-void
.end method

.method static synthetic e(Landroid/support/v7/media/j;)Landroid/support/v7/media/U;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    return-object v0
.end method

.method static synthetic f(Landroid/support/v7/media/j;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/media/j;)Landroid/support/v7/media/W;
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Landroid/support/v7/media/j;->j:Landroid/support/v7/media/W;

    return-object v0
.end method

.method private h()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 4

    .prologue
    .line 2381
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2382
    iget-object v1, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eq v0, v1, :cond_0

    .line 4392
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/media/j;->j:Landroid/support/v7/media/W;

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2382
    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/support/v7/media/j;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2388
    :goto_1
    return-object v0

    .line 4392
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2388
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    goto :goto_1
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2541
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_3

    .line 2542
    iget-object v0, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->q()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/U;->a:I

    .line 2543
    iget-object v0, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->r()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/U;->b:I

    .line 2544
    iget-object v0, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->p()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/U;->c:I

    .line 2545
    iget-object v0, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->n()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/U;->d:I

    .line 2546
    iget-object v0, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    iget-object v2, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/support/v7/media/MediaRouter$RouteInfo;->m()I

    move-result v2

    iput v2, v0, Landroid/support/v7/media/U;->e:I

    .line 2548
    iget-object v0, p0, Landroid/support/v7/media/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    .line 2549
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2550
    iget-object v0, p0, Landroid/support/v7/media/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/r;

    .line 2551
    invoke-virtual {v0}, Landroid/support/v7/media/r;->c()V

    .line 2549
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2553
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    if-eqz v0, :cond_1

    .line 2554
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Landroid/support/v7/media/j;->d()Landroid/support/v7/media/MediaRouter$RouteInfo;

    move-result-object v2

    if-ne v0, v2, :cond_2

    .line 2556
    iget-object v0, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    invoke-virtual {v0}, Landroid/support/v7/media/m;->a()V

    .line 2573
    :cond_1
    :goto_1
    return-void

    .line 2560
    :cond_2
    iget-object v0, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    iget v0, v0, Landroid/support/v7/media/U;->c:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 2562
    const/4 v0, 0x2

    .line 2564
    :goto_2
    iget-object v1, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    iget-object v2, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    iget v2, v2, Landroid/support/v7/media/U;->b:I

    iget-object v3, p0, Landroid/support/v7/media/j;->g:Landroid/support/v7/media/U;

    iget v3, v3, Landroid/support/v7/media/U;->a:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v7/media/m;->a(III)V

    goto :goto_1

    .line 2569
    :cond_3
    iget-object v0, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    if-eqz v0, :cond_1

    .line 2570
    iget-object v0, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    invoke-virtual {v0}, Landroid/support/v7/media/m;->a()V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 3

    .prologue
    .line 1950
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1951
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->b(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;
    .locals 3

    .prologue
    .line 1887
    iget-object v0, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ltz v1, :cond_1

    .line 1888
    iget-object v0, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter;

    .line 1889
    if-nez v0, :cond_0

    .line 1890
    iget-object v0, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    .line 1891
    :cond_0
    iget-object v2, v0, Landroid/support/v7/media/MediaRouter;->b:Landroid/content/Context;

    if-ne v2, p1, :cond_2

    .line 1897
    :goto_1
    return-object v0

    .line 1895
    :cond_1
    new-instance v0, Landroid/support/v7/media/MediaRouter;

    invoke-direct {v0, p1}, Landroid/support/v7/media/MediaRouter;-><init>(Landroid/content/Context;)V

    .line 1896
    iget-object v1, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 1880
    new-instance v0, Landroid/support/v7/media/M;

    iget-object v1, p0, Landroid/support/v7/media/j;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/support/v7/media/M;-><init>(Landroid/content/Context;Landroid/support/v7/media/P;)V

    iput-object v0, p0, Landroid/support/v7/media/j;->l:Landroid/support/v7/media/M;

    .line 1882
    iget-object v0, p0, Landroid/support/v7/media/j;->l:Landroid/support/v7/media/M;

    invoke-virtual {v0}, Landroid/support/v7/media/M;->a()V

    .line 1883
    return-void
.end method

.method public final a(Landroid/support/v4/media/session/MediaSessionCompat;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2502
    iput-object p1, p0, Landroid/support/v7/media/j;->t:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2503
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_4

    .line 2504
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->d()Ljava/lang/Object;

    move-result-object v0

    .line 4490
    :goto_0
    iget-object v2, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    if-eqz v2, :cond_0

    .line 4491
    iget-object v2, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    invoke-virtual {v2}, Landroid/support/v7/media/m;->a()V

    .line 4493
    :cond_0
    if-nez v0, :cond_3

    .line 4494
    iput-object v1, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    .line 2518
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v0, v1

    .line 2504
    goto :goto_0

    .line 4496
    :cond_3
    new-instance v1, Landroid/support/v7/media/m;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/media/m;-><init>(Landroid/support/v7/media/j;Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    .line 4497
    invoke-direct {p0}, Landroid/support/v7/media/j;->i()V

    goto :goto_1

    .line 2505
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2506
    iget-object v0, p0, Landroid/support/v7/media/j;->s:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_5

    .line 2507
    iget-object v0, p0, Landroid/support/v7/media/j;->s:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/j;->b(Ljava/lang/Object;)V

    .line 2508
    iget-object v0, p0, Landroid/support/v7/media/j;->s:Landroid/support/v4/media/session/MediaSessionCompat;

    iget-object v1, p0, Landroid/support/v7/media/j;->u:Landroid/support/v4/media/session/H;

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->b(Landroid/support/v4/media/session/H;)V

    .line 2510
    :cond_5
    iput-object p1, p0, Landroid/support/v7/media/j;->s:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 2511
    if-eqz p1, :cond_1

    .line 2512
    iget-object v0, p0, Landroid/support/v7/media/j;->u:Landroid/support/v4/media/session/H;

    invoke-virtual {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/support/v4/media/session/H;)V

    .line 2513
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2514
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/media/j;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 4

    .prologue
    .line 2098
    invoke-direct {p0, p1}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2099
    if-gez v0, :cond_1

    .line 2101
    new-instance v0, Landroid/support/v7/media/s;

    invoke-direct {v0, p1}, Landroid/support/v7/media/s;-><init>(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 2102
    iget-object v1, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2104
    const-string/jumbo v1, "MediaRouter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Provider added: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :cond_0
    iget-object v1, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v2, 0x201

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2108
    invoke-virtual {p1}, Landroid/support/v7/media/MediaRouteProvider;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/s;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2110
    iget-object v0, p0, Landroid/support/v7/media/j;->h:Landroid/support/v7/media/q;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 2112
    iget-object v0, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    invoke-virtual {p1, v0}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/d;)V

    .line 2114
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v7/media/MediaRouter$RouteInfo;)V
    .locals 1

    .prologue
    .line 1989
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    .line 1990
    return-void
.end method

.method public final a(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 2

    .prologue
    .line 1933
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_1

    .line 1934
    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1935
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/j;->p:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Landroid/support/v7/media/j;->p:Ljava/util/Map;

    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouteProvider$RouteController;

    .line 1937
    if-eqz v0, :cond_0

    .line 1938
    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/media/MediaRouter$RouteInfo;Landroid/content/Intent;Landroid/support/v7/media/i;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1922
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_1

    .line 1923
    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2, p3}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroid/support/v7/media/i;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1930
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    if-eqz p3, :cond_0

    .line 1928
    invoke-virtual {p3, v1, v1}, Landroid/support/v7/media/i;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2474
    invoke-direct {p0, p1}, Landroid/support/v7/media/j;->c(Ljava/lang/Object;)I

    move-result v0

    .line 2475
    if-gez v0, :cond_0

    .line 2476
    new-instance v0, Landroid/support/v7/media/r;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/r;-><init>(Landroid/support/v7/media/j;Ljava/lang/Object;)V

    .line 2477
    iget-object v1, p0, Landroid/support/v7/media/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2479
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/media/e;I)Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2006
    invoke-virtual {p1}, Landroid/support/v7/media/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2029
    :goto_0
    return v0

    .line 2011
    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v7/media/j;->k:Z

    if-eqz v0, :cond_1

    move v0, v2

    .line 2012
    goto :goto_0

    .line 2016
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v1

    .line 2017
    :goto_1
    if-ge v3, v4, :cond_4

    .line 2018
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2019
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->l()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2023
    :cond_2
    invoke-virtual {v0, p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 2024
    goto :goto_0

    .line 2017
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2029
    goto :goto_0
.end method

.method public final b()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Landroid/support/v7/media/j;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .prologue
    .line 2462
    iget-object v0, p0, Landroid/support/v7/media/j;->j:Landroid/support/v7/media/W;

    invoke-direct {p0, v0}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v0

    .line 2463
    if-ltz v0, :cond_0

    .line 2464
    iget-object v1, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/s;

    .line 2465
    invoke-virtual {v0, p1}, Landroid/support/v7/media/s;->a(Ljava/lang/String;)I

    move-result v1

    .line 2466
    if-ltz v1, :cond_0

    .line 2467
    invoke-static {v0}, Landroid/support/v7/media/s;->b(Landroid/support/v7/media/s;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 2470
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2118
    invoke-direct {p0, p1}, Landroid/support/v7/media/j;->c(Landroid/support/v7/media/MediaRouteProvider;)I

    move-result v1

    .line 2119
    if-ltz v1, :cond_1

    .line 2121
    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouteProvider;->setCallback(Landroid/support/v7/media/MediaRouteProvider$Callback;)V

    .line 2123
    invoke-virtual {p1, v2}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/d;)V

    .line 2125
    iget-object v0, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/s;

    .line 2126
    invoke-direct {p0, v0, v2}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/s;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2128
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2129
    const-string/jumbo v2, "MediaRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Provider removed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    :cond_0
    iget-object v2, p0, Landroid/support/v7/media/j;->i:Landroid/support/v7/media/l;

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/media/l;->a(ILjava/lang/Object;)V

    .line 2132
    iget-object v0, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2134
    :cond_1
    return-void
.end method

.method public final b(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 1

    .prologue
    .line 1944
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    if-eqz v0, :cond_0

    .line 1945
    iget-object v0, p0, Landroid/support/v7/media/j;->o:Landroid/support/v7/media/MediaRouteProvider$RouteController;

    invoke-virtual {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 1947
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2482
    invoke-direct {p0, p1}, Landroid/support/v7/media/j;->c(Ljava/lang/Object;)I

    move-result v0

    .line 2483
    if-ltz v0, :cond_0

    .line 2484
    iget-object v1, p0, Landroid/support/v7/media/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/r;

    .line 2485
    invoke-virtual {v0}, Landroid/support/v7/media/r;->b()V

    .line 2487
    :cond_0
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    .prologue
    .line 1959
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V
    .locals 3

    .prologue
    .line 1993
    iget-object v0, p0, Landroid/support/v7/media/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1994
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring attempt to select removed route: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    :goto_0
    return-void

    .line 1997
    :cond_0
    invoke-static {p1}, Landroid/support/v7/media/MediaRouter$RouteInfo;->c(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1998
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring attempt to select disabled route: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2002
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/support/v7/media/j;->d(Landroid/support/v7/media/MediaRouter$RouteInfo;I)V

    goto :goto_0
.end method

.method public final d()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .prologue
    .line 1967
    iget-object v0, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_0

    .line 1971
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is no default route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1974
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/j;->m:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public final e()Landroid/support/v7/media/MediaRouter$RouteInfo;
    .locals 2

    .prologue
    .line 1978
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    if-nez v0, :cond_0

    .line 1982
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "There is no currently selected route.  The media router has not yet been fully initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1985
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/j;->n:Landroid/support/v7/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public final f()V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2034
    .line 2036
    new-instance v8, Landroid/support/v7/media/f;

    invoke-direct {v8}, Landroid/support/v7/media/f;-><init>()V

    .line 2037
    iget-object v0, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v5

    move v4, v5

    :goto_0
    add-int/lit8 v7, v0, -0x1

    if-ltz v7, :cond_5

    .line 2038
    iget-object v0, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter;

    .line 2039
    if-nez v0, :cond_0

    .line 2040
    iget-object v0, p0, Landroid/support/v7/media/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v7

    goto :goto_0

    .line 2042
    :cond_0
    iget-object v1, v0, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v5

    .line 2043
    :goto_1
    if-ge v6, v9, :cond_4

    .line 2044
    iget-object v1, v0, Landroid/support/v7/media/MediaRouter;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/media/h;

    .line 2045
    iget-object v10, v1, Landroid/support/v7/media/h;->c:Landroid/support/v7/media/e;

    invoke-virtual {v8, v10}, Landroid/support/v7/media/f;->a(Landroid/support/v7/media/e;)Landroid/support/v7/media/f;

    .line 2046
    iget v10, v1, Landroid/support/v7/media/h;->d:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    move v2, v3

    move v4, v3

    .line 2050
    :cond_1
    iget v10, v1, Landroid/support/v7/media/h;->d:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_2

    .line 2051
    iget-boolean v10, p0, Landroid/support/v7/media/j;->k:Z

    if-nez v10, :cond_2

    move v4, v3

    .line 2055
    :cond_2
    iget v1, v1, Landroid/support/v7/media/h;->d:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    move v4, v3

    .line 2043
    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_1

    :cond_4
    move v0, v7

    .line 2060
    goto :goto_0

    .line 2061
    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v8}, Landroid/support/v7/media/f;->a()Landroid/support/v7/media/e;

    move-result-object v0

    .line 2064
    :goto_2
    iget-object v1, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    invoke-virtual {v1}, Landroid/support/v7/media/d;->a()Landroid/support/v7/media/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/media/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    invoke-virtual {v1}, Landroid/support/v7/media/d;->b()Z

    move-result v1

    if-ne v1, v2, :cond_8

    .line 2094
    :cond_6
    return-void

    .line 2061
    :cond_7
    sget-object v0, Landroid/support/v7/media/e;->a:Landroid/support/v7/media/e;

    goto :goto_2

    .line 2069
    :cond_8
    invoke-virtual {v0}, Landroid/support/v7/media/e;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    .line 2071
    iget-object v0, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    if-eqz v0, :cond_6

    .line 2074
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    .line 2079
    :goto_3
    invoke-static {}, Landroid/support/v7/media/MediaRouter;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2080
    const-string/jumbo v0, "MediaRouter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Updated discovery request: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    iget-boolean v0, p0, Landroid/support/v7/media/j;->k:Z

    if-eqz v0, :cond_a

    .line 2083
    const-string/jumbo v0, "MediaRouter"

    const-string/jumbo v1, "Forcing passive route discovery on a low-RAM device, system performance may be affected.  Please consider using CALLBACK_FLAG_REQUEST_DISCOVERY instead of CALLBACK_FLAG_FORCE_DISCOVERY."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_a
    iget-object v0, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v5

    .line 2091
    :goto_4
    if-ge v1, v2, :cond_6

    .line 2092
    iget-object v0, p0, Landroid/support/v7/media/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/s;

    invoke-static {v0}, Landroid/support/v7/media/s;->a(Landroid/support/v7/media/s;)Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/MediaRouteProvider;->setDiscoveryRequest(Landroid/support/v7/media/d;)V

    .line 2091
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 2077
    :cond_b
    new-instance v1, Landroid/support/v7/media/d;

    invoke-direct {v1, v0, v2}, Landroid/support/v7/media/d;-><init>(Landroid/support/v7/media/e;Z)V

    iput-object v1, p0, Landroid/support/v7/media/j;->q:Landroid/support/v7/media/d;

    goto :goto_3
.end method

.method public final g()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 2521
    iget-object v0, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    if-eqz v0, :cond_0

    .line 2522
    iget-object v0, p0, Landroid/support/v7/media/j;->r:Landroid/support/v7/media/m;

    invoke-virtual {v0}, Landroid/support/v7/media/m;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    .line 2526
    :goto_0
    return-object v0

    .line 2523
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/j;->t:Landroid/support/v4/media/session/MediaSessionCompat;

    if-eqz v0, :cond_1

    .line 2524
    iget-object v0, p0, Landroid/support/v7/media/j;->t:Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->c()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    goto :goto_0

    .line 2526
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
