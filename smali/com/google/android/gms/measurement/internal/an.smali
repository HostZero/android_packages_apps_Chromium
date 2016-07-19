.class public final Lcom/google/android/gms/measurement/internal/an;
.super Lcom/google/android/gms/measurement/internal/ag;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/ao;

.field private b:Lcom/google/android/gms/measurement/internal/t;

.field private c:Ljava/lang/Boolean;

.field private final d:Lcom/google/android/gms/measurement/internal/k;

.field private final e:Lcom/google/android/gms/measurement/internal/aG;

.field private final f:Ljava/util/List;

.field private final g:Lcom/google/android/gms/measurement/internal/k;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/S;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ag;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->f:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/measurement/internal/aG;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/S;->q()Lcom/google/android/gms/b/a;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/aG;-><init>(Lcom/google/android/gms/b/a;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->e:Lcom/google/android/gms/measurement/internal/aG;

    new-instance v0, Lcom/google/android/gms/measurement/internal/ao;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ao;-><init>(Lcom/google/android/gms/measurement/internal/an;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->a:Lcom/google/android/gms/measurement/internal/ao;

    new-instance v0, Lcom/google/android/gms/measurement/internal/ap;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/ap;-><init>(Lcom/google/android/gms/measurement/internal/an;Lcom/google/android/gms/measurement/internal/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->d:Lcom/google/android/gms/measurement/internal/k;

    new-instance v0, Lcom/google/android/gms/measurement/internal/aq;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/aq;-><init>(Lcom/google/android/gms/measurement/internal/an;Lcom/google/android/gms/measurement/internal/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->g:Lcom/google/android/gms/measurement/internal/k;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/an;)Lcom/google/android/gms/measurement/internal/ao;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->a:Lcom/google/android/gms/measurement/internal/ao;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/an;Landroid/content/ComponentName;)V
    .locals 2

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->b:Lcom/google/android/gms/measurement/internal/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->b:Lcom/google/android/gms/measurement/internal/t;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Disconnected from device MeasurementService"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/an;->w()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/an;Lcom/google/android/gms/measurement/internal/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/an;->a(Lcom/google/android/gms/measurement/internal/t;)V

    return-void
.end method

.method private a(Lcom/google/android/gms/measurement/internal/t;)V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/an;->b:Lcom/google/android/gms/measurement/internal/t;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/an;->v()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Processing queued up service tasks"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/an;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->g:Lcom/google/android/gms/measurement/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/k;->c()V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->R()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Discarding data. Max runnable queue size reached"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->g:Lcom/google/android/gms/measurement/internal/k;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/k;->a(J)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/an;->w()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/an;)V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Inactivity, disconnecting from AppMeasurementService"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->E()V

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/an;->a:Lcom/google/android/gms/measurement/internal/ao;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->b:Lcom/google/android/gms/measurement/internal/t;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/google/android/gms/measurement/internal/an;)Lcom/google/android/gms/measurement/internal/t;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->b:Lcom/google/android/gms/measurement/internal/t;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/measurement/internal/an;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/an;->v()V

    return-void
.end method

.method private v()V
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->e:Lcom/google/android/gms/measurement/internal/aG;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aG;->a()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->d:Lcom/google/android/gms/measurement/internal/k;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->J()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/k;->a(J)V

    return-void
.end method

.method private w()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->E()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->v()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->c:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v3, "State of service unknown"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->E()V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->c:Ljava/lang/Boolean;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/an;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/I;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Using measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->a:Lcom/google/android/gms/measurement/internal/ao;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ao;->a()V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v3, "Checking service availability"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/common/j;->zzoK()Lcom/google/android/gms/common/j;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/common/j;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_2
    move v0, v2

    goto :goto_1

    :sswitch_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v3, "Service available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :sswitch_1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v3, "Service missing"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v3, "Service updating"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :sswitch_3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v3, "Service version update required"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_4
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v3, "Service disabled"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_5
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v3, "Service invalid"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/google/android/gms/measurement/c;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    :goto_3
    if-eqz v1, :cond_5

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Using local app measurement service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.android.gms.measurement.START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/measurement/c;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/an;->a:Lcom/google/android/gms/measurement/internal/ao;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/ao;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->r()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f;->O()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Using direct local measurement implementation"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/X;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/an;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/X;-><init>(Lcom/google/android/gms/measurement/internal/S;B)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/an;->a(Lcom/google/android/gms/measurement/internal/t;)V

    goto/16 :goto_0

    :cond_6
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Not in main process. Unable to use local measurement implementation. Please register the AppMeasurementService service in the app manifest"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x9 -> :sswitch_5
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->E()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/ar;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/measurement/internal/ar;-><init>(Lcom/google/android/gms/measurement/internal/an;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/an;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->E()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/as;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/as;-><init>(Lcom/google/android/gms/measurement/internal/an;Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/an;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->d()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->e()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/w;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->f()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/m;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->g()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/an;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->h()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/b/a;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/g;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->k()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/measurement/internal/M;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->m()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Lcom/google/android/gms/measurement/internal/ay;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->n()Lcom/google/android/gms/measurement/internal/ay;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/O;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/y;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/I;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/f;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->r()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    return-object v0
.end method

.method protected final s()V
    .locals 0

    return-void
.end method

.method public final t()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->E()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/an;->b:Lcom/google/android/gms/measurement/internal/t;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final u()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/an;->E()V

    new-instance v0, Lcom/google/android/gms/measurement/internal/at;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/at;-><init>(Lcom/google/android/gms/measurement/internal/an;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/an;->a(Ljava/lang/Runnable;)V

    return-void
.end method
