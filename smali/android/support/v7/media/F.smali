.class final Landroid/support/v7/media/F;
.super Landroid/support/v7/media/MediaRouteProvider;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final a:Z


# instance fields
.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/support/v7/media/K;

.field private final d:Ljava/util/ArrayList;

.field private e:Z

.field private f:Z

.field private g:Landroid/support/v7/media/G;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-string/jumbo v0, "MediaRouteProviderProxy"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/F;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    invoke-direct {v0, p2}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    invoke-direct {p0, p1, v0}, Landroid/support/v7/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;)V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/F;->d:Ljava/util/ArrayList;

    .line 61
    iput-object p2, p0, Landroid/support/v7/media/F;->b:Landroid/content/ComponentName;

    .line 62
    new-instance v0, Landroid/support/v7/media/K;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/media/K;-><init>(Landroid/support/v7/media/F;B)V

    iput-object v0, p0, Landroid/support/v7/media/F;->c:Landroid/support/v7/media/K;

    .line 63
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/F;)Landroid/support/v7/media/K;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/support/v7/media/F;->c:Landroid/support/v7/media/K;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/media/F;Landroid/support/v7/media/G;)V
    .locals 4

    .prologue
    .line 44
    .line 4220
    iget-object v0, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    if-ne v0, p1, :cond_1

    .line 4221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/F;->h:Z

    .line 4276
    iget-object v0, p0, Landroid/support/v7/media/F;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4277
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 4278
    iget-object v0, p0, Landroid/support/v7/media/F;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/J;

    iget-object v3, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/J;->a(Landroid/support/v7/media/G;)V

    .line 4277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4224
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/media/F;->getDiscoveryRequest()Landroid/support/v7/media/d;

    move-result-object v0

    .line 4225
    if-eqz v0, :cond_1

    .line 4226
    iget-object v1, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    invoke-virtual {v1, v0}, Landroid/support/v7/media/G;->a(Landroid/support/v7/media/d;)V

    .line 44
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/F;Landroid/support/v7/media/G;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 3

    .prologue
    .line 44
    .line 3251
    iget-object v0, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    if-ne v0, p1, :cond_1

    .line 3252
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 3253
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Descriptor changed, descriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3255
    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v7/media/F;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 44
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/F;Landroid/support/v7/media/G;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    .line 3241
    iget-object v0, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    if-ne v0, p1, :cond_1

    .line 3242
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 3243
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service connection error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3245
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/F;->h()V

    .line 44
    :cond_1
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/F;Landroid/support/v7/media/J;)V
    .locals 1

    .prologue
    .line 44
    .line 2270
    iget-object v0, p0, Landroid/support/v7/media/F;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2271
    invoke-virtual {p1}, Landroid/support/v7/media/J;->a()V

    .line 2272
    invoke-direct {p0}, Landroid/support/v7/media/F;->e()V

    .line 44
    return-void
.end method

.method static synthetic b(Landroid/support/v7/media/F;Landroid/support/v7/media/G;)V
    .locals 3

    .prologue
    .line 44
    .line 5232
    iget-object v0, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    if-ne v0, p1, :cond_1

    .line 5233
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 5234
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service connection died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/F;->i()V

    .line 44
    :cond_1
    return-void
.end method

.method static synthetic d()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    return v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/support/v7/media/F;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-direct {p0}, Landroid/support/v7/media/F;->g()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/F;->h()V

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 138
    iget-boolean v1, p0, Landroid/support/v7/media/F;->e:Z

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {p0}, Landroid/support/v7/media/F;->getDiscoveryRequest()Landroid/support/v7/media/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    iget-object v1, p0, Landroid/support/v7/media/F;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/support/v7/media/F;->f:Z

    if-nez v0, :cond_1

    .line 155
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 156
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Binding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.MediaRouteProviderService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroid/support/v7/media/F;->b:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/media/F;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/media/F;->f:Z

    .line 163
    iget-boolean v0, p0, Landroid/support/v7/media/F;->f:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_1

    .line 164
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Bind failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    sget-boolean v1, Landroid/support/v7/media/F;->a:Z

    if-eqz v1, :cond_1

    .line 168
    const-string/jumbo v1, "MediaRouteProviderProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": Bind failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 175
    iget-boolean v0, p0, Landroid/support/v7/media/F;->f:Z

    if-eqz v0, :cond_1

    .line 176
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 177
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Unbinding"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/F;->f:Z

    .line 181
    invoke-direct {p0}, Landroid/support/v7/media/F;->i()V

    .line 182
    invoke-virtual {p0}, Landroid/support/v7/media/F;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 184
    :cond_1
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 260
    iget-object v1, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {p0, v3}, Landroid/support/v7/media/F;->setDescriptor(Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 262
    iput-boolean v0, p0, Landroid/support/v7/media/F;->h:Z

    .line 1283
    iget-object v1, p0, Landroid/support/v7/media/F;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    .line 1284
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1285
    iget-object v0, p0, Landroid/support/v7/media/F;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/J;

    invoke-virtual {v0}, Landroid/support/v7/media/J;->a()V

    .line 1284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    invoke-virtual {v0}, Landroid/support/v7/media/G;->b()V

    .line 265
    iput-object v3, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    .line 267
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 101
    iget-boolean v0, p0, Landroid/support/v7/media/F;->e:Z

    if-nez v0, :cond_1

    .line 102
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Starting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/F;->e:Z

    .line 107
    invoke-direct {p0}, Landroid/support/v7/media/F;->e()V

    .line 109
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/media/F;->b:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/F;->b:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 112
    iget-boolean v0, p0, Landroid/support/v7/media/F;->e:Z

    if-eqz v0, :cond_1

    .line 113
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 114
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Stopping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/media/F;->e:Z

    .line 118
    invoke-direct {p0}, Landroid/support/v7/media/F;->e()V

    .line 120
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/media/F;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Landroid/support/v7/media/F;->h()V

    .line 125
    invoke-direct {p0}, Landroid/support/v7/media/F;->g()V

    .line 127
    :cond_0
    return-void
.end method

.method public final onCreateRouteController(Ljava/lang/String;)Landroid/support/v7/media/MediaRouteProvider$RouteController;
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/support/v7/media/F;->getDescriptor()Landroid/support/v7/media/MediaRouteProviderDescriptor;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 71
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 72
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/b;

    .line 73
    invoke-virtual {v0}, Landroid/support/v7/media/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Landroid/support/v7/media/J;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/media/J;-><init>(Landroid/support/v7/media/F;Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Landroid/support/v7/media/F;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-boolean v1, p0, Landroid/support/v7/media/F;->h:Z

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/J;->a(Landroid/support/v7/media/G;)V

    .line 79
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/F;->e()V

    .line 84
    :goto_1
    return-object v0

    .line 71
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final onDiscoveryRequestChanged(Landroid/support/v7/media/d;)V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/support/v7/media/F;->h:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/G;->a(Landroid/support/v7/media/d;)V

    .line 92
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/F;->e()V

    .line 93
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 188
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 189
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Connected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/media/F;->f:Z

    if-eqz v0, :cond_1

    .line 193
    invoke-direct {p0}, Landroid/support/v7/media/F;->i()V

    .line 195
    if-eqz p2, :cond_2

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 196
    :goto_0
    invoke-static {v0}, Landroid/support/v7/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    new-instance v1, Landroid/support/v7/media/G;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/media/G;-><init>(Landroid/support/v7/media/F;Landroid/os/Messenger;)V

    .line 198
    invoke-virtual {v1}, Landroid/support/v7/media/G;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 199
    iput-object v1, p0, Landroid/support/v7/media/F;->g:Landroid/support/v7/media/G;

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 195
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_3
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_1

    .line 202
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Registration failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    :cond_4
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service returned invalid messenger binder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 213
    sget-boolean v0, Landroid/support/v7/media/F;->a:Z

    if-eqz v0, :cond_0

    .line 214
    const-string/jumbo v0, "MediaRouteProviderProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": Service disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/media/F;->i()V

    .line 217
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/support/v7/media/F;->b:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
