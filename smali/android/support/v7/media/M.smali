.class final Landroid/support/v7/media/M;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProviderWatcher.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v7/media/P;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/content/pm/PackageManager;

.field private final e:Ljava/util/ArrayList;

.field private f:Z

.field private final g:Landroid/content/BroadcastReceiver;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/media/P;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Landroid/support/v7/media/N;

    invoke-direct {v0, p0}, Landroid/support/v7/media/N;-><init>(Landroid/support/v7/media/M;)V

    iput-object v0, p0, Landroid/support/v7/media/M;->g:Landroid/content/BroadcastReceiver;

    .line 146
    new-instance v0, Landroid/support/v7/media/O;

    invoke-direct {v0, p0}, Landroid/support/v7/media/O;-><init>(Landroid/support/v7/media/M;)V

    iput-object v0, p0, Landroid/support/v7/media/M;->h:Ljava/lang/Runnable;

    .line 49
    iput-object p1, p0, Landroid/support/v7/media/M;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Landroid/support/v7/media/M;->b:Landroid/support/v7/media/P;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/media/M;->c:Landroid/os/Handler;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/media/M;->d:Landroid/content/pm/PackageManager;

    .line 53
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 130
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 131
    iget-object v0, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/F;

    .line 132
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/media/F;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 136
    :goto_1
    return v0

    .line 130
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/media/M;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 38
    .line 1089
    iget-boolean v1, p0, Landroid/support/v7/media/M;->f:Z

    if-eqz v1, :cond_2

    .line 1096
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.MediaRouteProviderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    iget-object v2, p0, Landroid/support/v7/media/M;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1098
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1099
    if-eqz v0, :cond_3

    .line 1100
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Landroid/support/v7/media/M;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1101
    if-gez v3, :cond_0

    .line 1102
    new-instance v3, Landroid/support/v7/media/F;

    iget-object v4, p0, Landroid/support/v7/media/M;->a:Landroid/content/Context;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Landroid/support/v7/media/F;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    .line 1105
    invoke-virtual {v3}, Landroid/support/v7/media/F;->a()V

    .line 1106
    iget-object v4, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1107
    iget-object v1, p0, Landroid/support/v7/media/M;->b:Landroid/support/v7/media/P;

    invoke-interface {v1, v3}, Landroid/support/v7/media/P;->a(Landroid/support/v7/media/MediaRouteProvider;)V

    move v1, v0

    .line 1108
    goto :goto_0

    :cond_0
    if-lt v3, v1, :cond_3

    .line 1109
    iget-object v0, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/F;

    .line 1110
    invoke-virtual {v0}, Landroid/support/v7/media/F;->a()V

    .line 1111
    invoke-virtual {v0}, Landroid/support/v7/media/F;->c()V

    .line 1112
    iget-object v4, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v1, 0x1

    invoke-static {v4, v3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    :goto_1
    move v1, v0

    .line 1115
    goto :goto_0

    .line 1118
    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1119
    iget-object v0, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-lt v2, v1, :cond_2

    .line 1120
    iget-object v0, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/F;

    .line 1121
    iget-object v3, p0, Landroid/support/v7/media/M;->b:Landroid/support/v7/media/P;

    invoke-interface {v3, v0}, Landroid/support/v7/media/P;->b(Landroid/support/v7/media/MediaRouteProvider;)V

    .line 1122
    iget-object v3, p0, Landroid/support/v7/media/M;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1123
    invoke-virtual {v0}, Landroid/support/v7/media/F;->b()V

    .line 1119
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    .line 38
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 56
    iget-boolean v0, p0, Landroid/support/v7/media/M;->f:Z

    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/media/M;->f:Z

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string/jumbo v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Landroid/support/v7/media/M;->a:Landroid/content/Context;

    iget-object v2, p0, Landroid/support/v7/media/M;->g:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/media/M;->c:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Landroid/support/v7/media/M;->c:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/media/M;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_0
    return-void
.end method
