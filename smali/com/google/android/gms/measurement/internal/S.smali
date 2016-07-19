.class public Lcom/google/android/gms/measurement/internal/S;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/google/android/gms/measurement/internal/S;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/measurement/internal/f;

.field private final d:Lcom/google/android/gms/measurement/internal/I;

.field private final e:Lcom/google/android/gms/measurement/internal/y;

.field private final f:Lcom/google/android/gms/measurement/internal/O;

.field private final g:Lcom/google/android/gms/measurement/internal/ay;

.field private final h:Lcom/google/android/gms/measurement/internal/M;

.field private final i:Lcom/google/android/gms/measurement/a;

.field private final j:Lcom/google/android/gms/measurement/internal/c;

.field private final k:Lcom/google/android/gms/measurement/internal/g;

.field private final l:Lcom/google/android/gms/measurement/internal/B;

.field private final m:Lcom/google/android/gms/b/a;

.field private final n:Lcom/google/android/gms/measurement/internal/an;

.field private final o:Lcom/google/android/gms/measurement/internal/m;

.field private final p:Lcom/google/android/gms/measurement/internal/aj;

.field private final q:Lcom/google/android/gms/measurement/internal/w;

.field private final r:Lcom/google/android/gms/measurement/internal/F;

.field private final s:Lcom/google/android/gms/measurement/internal/aH;

.field private final t:Lcom/google/android/gms/measurement/internal/e;

.field private u:Ljava/lang/Boolean;

.field private v:Ljava/util/List;

.field private w:I

.field private x:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/ai;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/ai;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->b:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/b/b;->c()Lcom/google/android/gms/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    new-instance v0, Lcom/google/android/gms/measurement/internal/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/f;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->c:Lcom/google/android/gms/measurement/internal/f;

    new-instance v0, Lcom/google/android/gms/measurement/internal/I;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/I;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->d:Lcom/google/android/gms/measurement/internal/I;

    new-instance v0, Lcom/google/android/gms/measurement/internal/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/y;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->e:Lcom/google/android/gms/measurement/internal/y;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->x()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "App measurement is starting up, version"

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->M()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->x()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "To enable debug logging run: adb shell setprop log.tag.GMPM VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Debug logging enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->j:Lcom/google/android/gms/measurement/internal/c;

    new-instance v0, Lcom/google/android/gms/measurement/internal/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/m;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->o:Lcom/google/android/gms/measurement/internal/m;

    new-instance v0, Lcom/google/android/gms/measurement/internal/w;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/w;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->q:Lcom/google/android/gms/measurement/internal/w;

    new-instance v0, Lcom/google/android/gms/measurement/internal/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/g;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->k:Lcom/google/android/gms/measurement/internal/g;

    new-instance v0, Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->t:Lcom/google/android/gms/measurement/internal/e;

    new-instance v0, Lcom/google/android/gms/measurement/internal/B;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/B;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->l:Lcom/google/android/gms/measurement/internal/B;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/ai;->b(Lcom/google/android/gms/measurement/internal/S;)Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->n:Lcom/google/android/gms/measurement/internal/an;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/ai;->a(Lcom/google/android/gms/measurement/internal/S;)Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->p:Lcom/google/android/gms/measurement/internal/aj;

    invoke-static {p0}, Lcom/google/android/gms/measurement/internal/ai;->c(Lcom/google/android/gms/measurement/internal/S;)Lcom/google/android/gms/measurement/internal/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aH;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->s:Lcom/google/android/gms/measurement/internal/aH;

    new-instance v0, Lcom/google/android/gms/measurement/internal/F;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/F;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->r:Lcom/google/android/gms/measurement/internal/F;

    new-instance v0, Lcom/google/android/gms/measurement/a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/a;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->i:Lcom/google/android/gms/measurement/a;

    new-instance v0, Lcom/google/android/gms/measurement/internal/ay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ay;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ay;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->g:Lcom/google/android/gms/measurement/internal/ay;

    new-instance v0, Lcom/google/android/gms/measurement/internal/M;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/M;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/M;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->h:Lcom/google/android/gms/measurement/internal/M;

    new-instance v0, Lcom/google/android/gms/measurement/internal/O;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/O;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->F()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->f:Lcom/google/android/gms/measurement/internal/O;

    iget v0, p0, Lcom/google/android/gms/measurement/internal/S;->w:I

    iget v1, p0, Lcom/google/android/gms/measurement/internal/S;->x:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Not all components initialized"

    iget v2, p0, Lcom/google/android/gms/measurement/internal/S;->w:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/measurement/internal/S;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->k()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->t()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->f:Lcom/google/android/gms/measurement/internal/O;

    new-instance v1, Lcom/google/android/gms/measurement/internal/U;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/U;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Not tracking deep linking pre-ICS"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A()Lcom/google/android/gms/measurement/internal/aH;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->s:Lcom/google/android/gms/measurement/internal/aH;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->s:Lcom/google/android/gms/measurement/internal/aH;

    return-object v0
.end method

.method private B()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->B()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()V
    .locals 14

    .prologue
    .line 0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->B()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->r:Lcom/google/android/gms/measurement/internal/F;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/F;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->A()Lcom/google/android/gms/measurement/internal/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aH;->t()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->aa()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->Y()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v6

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/I;->d:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/g;->z()J

    move-result-wide v10

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/g;->A()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-nez v12, :cond_3

    const-wide/16 v0, 0x0

    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_6

    .line 2000
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->r:Lcom/google/android/gms/measurement/internal/F;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/F;->b()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->A()Lcom/google/android/gms/measurement/internal/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aH;->t()V

    goto :goto_0

    :cond_3
    sub-long/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v10, v0, v10

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v0, v6

    sub-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v0, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-long v0, v10, v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v2

    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/google/android/gms/measurement/internal/c;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    add-long v0, v6, v4

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-eqz v2, :cond_2

    cmp-long v2, v8, v10

    if-ltz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->ac()I

    move-result v3

    if-ge v2, v3, :cond_5

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    int-to-long v4, v3

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->ab()J

    move-result-wide v6

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    cmp-long v3, v0, v8

    if-gtz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->o()Lcom/google/android/gms/measurement/internal/B;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B;->t()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->r:Lcom/google/android/gms/measurement/internal/F;

    .line 0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/F;->a()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->A()Lcom/google/android/gms/measurement/internal/aH;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aH;->t()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/I;->e:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->X()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v6

    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/c;->a(JJ)Z

    move-result v6

    if-nez v6, :cond_8

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 4000
    :cond_8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S;->r:Lcom/google/android/gms/measurement/internal/F;

    .line 0
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/F;->b()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v2}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_9

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->A()Lcom/google/android/gms/measurement/internal/aH;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/aH;->a(J)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Upload scheduled in approximately ms"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->A()Lcom/google/android/gms/measurement/internal/aH;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/aH;->a(J)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/S;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/S;->a:Lcom/google/android/gms/measurement/internal/S;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/measurement/internal/S;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/measurement/internal/S;->a:Lcom/google/android/gms/measurement/internal/S;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/measurement/internal/ai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/ai;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/S;

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/S;-><init>(Lcom/google/android/gms/measurement/internal/ai;)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/S;->a:Lcom/google/android/gms/measurement/internal/S;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/measurement/internal/S;->a:Lcom/google/android/gms/measurement/internal/S;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/S;ILjava/lang/Throwable;[B)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/O;->c()V

    if-nez p3, :cond_0

    new-array p3, v0, [B

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S;->v:Ljava/util/List;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/S;->v:Ljava/util/List;

    const/16 v2, 0xc8

    if-eq p1, v2, :cond_1

    const/16 v2, 0xcc

    if-ne p1, v2, :cond_4

    :cond_1
    if-nez p2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/K;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v2}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->d:Lcom/google/android/gms/measurement/internal/K;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->C()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v2, "Successful upload. Got network response. code, size"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->t()V

    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/g;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g;->v()V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->u()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->o()Lcom/google/android/gms/measurement/internal/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B;->t()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->w()V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->C()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Network upload failed. Will retry later. code, error"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/I;->d:Lcom/google/android/gms/measurement/internal/K;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v2}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    const/16 v1, 0x1f7

    if-eq p1, v1, :cond_5

    const/16 v1, 0x1ad

    if-ne p1, v1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->e:Lcom/google/android/gms/measurement/internal/K;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v1}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    :cond_7
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->C()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/S;Ljava/lang/String;ILjava/lang/Throwable;[B)V
    .locals 6

    const/16 v5, 0x130

    const/4 v1, 0x1

    const/16 v4, 0x194

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/O;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    if-nez p4, :cond_0

    new-array p4, v0, [B

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->t()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/g;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ah;

    move-result-object v3

    const/16 v2, 0xc8

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v5, :cond_4

    :cond_1
    if-nez p3, :cond_4

    move v2, v1

    :goto_0
    if-nez v2, :cond_2

    if-ne p2, v4, :cond_9

    :cond_2
    if-eq p2, v4, :cond_3

    if-ne p2, v5, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->i()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/M;->a(Ljava/lang/String;)Lcom/google/android/gms/b/p;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->i()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/M;->a(Ljava/lang/String;[B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    :goto_1
    return-void

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->i()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v0

    invoke-virtual {v0, p1, p4}, Lcom/google/android/gms/measurement/internal/M;->a(Ljava/lang/String;[B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    goto :goto_1

    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->f(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/ah;)V

    if-ne p2, v4, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Config not found. Using empty config"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->o()Lcom/google/android/gms/measurement/internal/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B;->t()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->B()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->w()V

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->u()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    goto :goto_1

    :cond_7
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g;->v()V

    throw v0

    :cond_8
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->C()V

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v2}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/ah;->g(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/ah;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/I;->d:Lcom/google/android/gms/measurement/internal/K;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v3}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    const/16 v2, 0x1f7

    if-eq p2, v2, :cond_a

    const/16 v2, 0x1ad

    if-ne p2, v2, :cond_b

    :cond_a
    move v0, v1

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->e:Lcom/google/android/gms/measurement/internal/K;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v1}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->C()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method private static a(Lcom/google/android/gms/measurement/internal/af;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/gms/measurement/internal/ag;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/ag;->D()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Component not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/gms/measurement/internal/n;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/n;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->b(Z)V

    new-instance v2, Lcom/google/android/gms/b/v;

    invoke-direct {v2}, Lcom/google/android/gms/b/v;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/b/v;->a:Ljava/lang/Integer;

    const-string/jumbo v0, "android"

    iput-object v0, v2, Lcom/google/android/gms/b/v;->i:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/b/v;->o:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/b/v;->n:Ljava/lang/String;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/b/v;->p:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/b/v;->q:Ljava/lang/Long;

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/b/v;->y:Ljava/lang/String;

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_0
    iput-object v0, v2, Lcom/google/android/gms/b/v;->v:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/I;->a(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/google/android/gms/b/v;->s:Ljava/lang/String;

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, v2, Lcom/google/android/gms/b/v;->t:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->s()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/b/v;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->s()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/b/v;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->s()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->v()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/b/v;->m:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->s()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->w()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/b/v;->l:Ljava/lang/String;

    iput-object v1, v2, Lcom/google/android/gms/b/v;->r:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/b/v;->d:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/b/v;->e:Ljava/lang/Long;

    iput-object v1, v2, Lcom/google/android/gms/b/v;->f:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ah;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/gms/measurement/internal/ah;

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/measurement/internal/ah;-><init>(Lcom/google/android/gms/measurement/internal/S;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/ah;->e(J)V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/ah;->a(J)V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/ah;->b(J)V

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->d(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->e(Ljava/lang/String;)V

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ah;->c(J)V

    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/ah;->d(J)V

    iget-boolean v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->a(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/ah;)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/b/v;->u:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/b/x;

    iput-object v0, v2, Lcom/google/android/gms/b/v;->c:[Lcom/google/android/gms/b/x;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    new-instance v4, Lcom/google/android/gms/b/x;

    invoke-direct {v4}, Lcom/google/android/gms/b/x;-><init>()V

    iget-object v0, v2, Lcom/google/android/gms/b/v;->c:[Lcom/google/android/gms/b/x;

    aput-object v4, v0, v1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->b:Ljava/lang/String;

    iput-object v0, v4, Lcom/google/android/gms/b/x;->b:Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/b;

    iget-wide v6, v0, Lcom/google/android/gms/measurement/internal/b;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v4, Lcom/google/android/gms/b/x;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v5

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/b;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/Object;

    invoke-virtual {v5, v4, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/b/x;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-wide v4, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/g;->b(Lcom/google/android/gms/b/v;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/n;J)V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Data loss. Failed to insert raw event metadata"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private a(J)Z
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->t()V

    :try_start_0
    new-instance v4, Lcom/google/android/gms/measurement/internal/T;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/google/android/gms/measurement/internal/T;-><init>(Lcom/google/android/gms/measurement/internal/S;B)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, v4}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;JLcom/google/android/gms/measurement/internal/i;)V

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_b

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/T;->a:Lcom/google/android/gms/b/v;

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/b/s;

    iput-object v0, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v3, v0

    :goto_1
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->i()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v2

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->a:Lcom/google/android/gms/b/v;

    iget-object v6, v0, Lcom/google/android/gms/b/v;->o:Ljava/lang/String;

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/s;

    iget-object v0, v0, Lcom/google/android/gms/b/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/M;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v6, "Dropping blacklisted raw event"

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/s;

    iget-object v0, v0, Lcom/google/android/gms/b/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v6, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    add-int/lit8 v2, v1, 0x1

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/s;

    aput-object v0, v6, v1

    move v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/b/s;

    iput-object v0, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    :cond_4
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->a:Lcom/google/android/gms/b/v;

    iget-object v0, v0, Lcom/google/android/gms/b/v;->o:Ljava/lang/String;

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/T;->a:Lcom/google/android/gms/b/v;

    iget-object v1, v1, Lcom/google/android/gms/b/v;->c:[Lcom/google/android/gms/b/x;

    iget-object v2, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->u()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->a(Ljava/lang/String;[Lcom/google/android/gms/b/s;[Lcom/google/android/gms/b/x;)[Lcom/google/android/gms/b/r;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/b/v;->A:[Lcom/google/android/gms/b/r;

    iget-object v0, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/b/s;->c:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/b/v;->e:Ljava/lang/Long;

    iget-object v0, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/android/gms/b/s;->c:Ljava/lang/Long;

    iput-object v0, v5, Lcom/google/android/gms/b/v;->f:Ljava/lang/Long;

    const/4 v0, 0x1

    :goto_3
    iget-object v1, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, v5, Lcom/google/android/gms/b/v;->b:[Lcom/google/android/gms/b/s;

    aget-object v1, v1, v0

    iget-object v2, v1, Lcom/google/android/gms/b/s;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v6, v5, Lcom/google/android/gms/b/v;->e:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/b/s;->c:Ljava/lang/Long;

    iput-object v2, v5, Lcom/google/android/gms/b/v;->e:Ljava/lang/Long;

    :cond_5
    iget-object v2, v1, Lcom/google/android/gms/b/s;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v6, v5, Lcom/google/android/gms/b/v;->f:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_6

    iget-object v1, v1, Lcom/google/android/gms/b/s;->c:Ljava/lang/Long;

    iput-object v1, v5, Lcom/google/android/gms/b/v;->f:Ljava/lang/Long;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/T;->a:Lcom/google/android/gms/b/v;

    iget-object v6, v0, Lcom/google/android/gms/b/v;->o:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/g;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ah;

    move-result-object v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Bundling raw events w/o app info"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->A()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/b/v;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/b/v;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/T;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g;->w()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v2, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v6, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->u()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_8
    :try_start_3
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/ah;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_7
    iput-object v2, v5, Lcom/google/android/gms/b/v;->h:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/ah;->f()J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_c

    :goto_8
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_a

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_9
    iput-object v0, v5, Lcom/google/android/gms/b/v;->g:Ljava/lang/Long;

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/ah;->p()V

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/ah;->m()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Lcom/google/android/gms/b/v;->w:Ljava/lang/Integer;

    iget-object v0, v5, Lcom/google/android/gms/b/v;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->a(J)V

    iget-object v0, v5, Lcom/google/android/gms/b/v;->f:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/measurement/internal/ah;->b(J)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/ah;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g;->v()V

    throw v0

    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Failed to remove unused event metadata"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->u()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    const/4 v0, 0x0

    goto :goto_6

    :cond_c
    move-wide v0, v2

    goto :goto_8
.end method

.method private c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/g;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ah;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/I;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-nez v2, :cond_7

    new-instance v0, Lcom/google/android/gms/measurement/internal/ah;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/measurement/internal/ah;-><init>(Lcom/google/android/gms/measurement/internal/S;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/I;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/ah;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/ah;->c(Ljava/lang/String;)V

    move-object v2, v0

    move v0, v1

    :cond_0
    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/ah;->b(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->j()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->f:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ah;->c(J)V

    move v0, v1

    :cond_2
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/ah;->d(Ljava/lang/String;)V

    move v0, v1

    :cond_3
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/ah;->e(Ljava/lang/String;)V

    move v0, v1

    :cond_4
    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->k()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_5

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->g:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/ah;->d(J)V

    move v0, v1

    :cond_5
    iget-boolean v3, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->l()Z

    move-result v4

    if-eq v3, v4, :cond_8

    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/ah;->a(Z)V

    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/ah;)V

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/ah;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/measurement/internal/ah;->a(Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method final a(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 18

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/O;->c()V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->i()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/M;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Dropping blacklisted event"

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Logging event"

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->t()V

    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->c:Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/EventParams;->b()Landroid/os/Bundle;

    move-result-object v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    const-string/jumbo v2, "_iap"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "ecommerce_purchase"

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const-string/jumbo v2, "currency"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "value"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-wide/16 v6, 0x0

    cmp-long v3, v8, v6

    if-lez v3, :cond_6

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[A-Z]{3}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "_ltv_"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/measurement/internal/g;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Long;

    if-nez v3, :cond_8

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/S;->c:Lcom/google/android/gms/measurement/internal/f;

    sget-object v6, Lcom/google/android/gms/measurement/internal/r;->x:Lcom/google/android/gms/measurement/internal/s;

    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/s;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;I)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v2}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/b;)Z

    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v2, "_c"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x1

    cmp-long v2, v2, v6

    if-nez v2, :cond_9

    const/4 v2, 0x1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v3}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/I;->u()J

    move-result-wide v10

    add-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    const-wide/16 v10, 0x3c

    div-long/2addr v6, v10

    const-wide/16 v10, 0x3c

    div-long/2addr v6, v10

    const-wide/16 v10, 0x18

    div-long/2addr v6, v10

    if-eqz v9, :cond_a

    if-eqz v2, :cond_a

    const/4 v10, 0x1

    :goto_3
    move-object v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/g;->a(JLjava/lang/String;ZZ)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/h;->b:J

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->B()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_b

    const-wide/16 v4, 0x3e8

    rem-long v4, v6, v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v4, "Data loss. Too many events logged. count"

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/h;->b:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->v()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    new-instance v3, Lcom/google/android/gms/measurement/internal/b;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v2}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v6

    add-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/g;->v()V

    throw v2

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_a
    const/4 v10, 0x0

    goto :goto_3

    :cond_b
    if-eqz v9, :cond_d

    :try_start_2
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/h;->a:J

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->C()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v6, v10

    if-lez v5, :cond_d

    const-wide/16 v4, 0x3e8

    rem-long v4, v6, v4

    const-wide/16 v6, 0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v4, "Data loss. Too many public events logged. count"

    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/h;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->u()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->v()V

    goto/16 :goto_0

    :cond_d
    if-eqz v9, :cond_e

    if-eqz v2, :cond_e

    :try_start_3
    iget-wide v2, v3, Lcom/google/android/gms/measurement/internal/h;->c:J

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->D()J

    move-result-wide v6

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_e

    const-string/jumbo v2, "_c"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string/jumbo v2, "_err"

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_e

    const-string/jumbo v2, "_err"

    const-wide/16 v6, 0x4

    invoke-virtual {v12, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/g;->c(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v5

    const-string/jumbo v6, "Data lost. Too many events stored on disk, deleted"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_f
    new-instance v5, Lcom/google/android/gms/measurement/internal/n;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/EventParcel;->e:J

    move-object/from16 v6, p0

    move-object v8, v4

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/measurement/internal/n;-><init>(Lcom/google/android/gms/measurement/internal/S;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v8

    if-nez v8, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/g;->e(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->A()I

    const-wide/16 v6, 0x1f4

    cmp-long v2, v2, v6

    if-ltz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Too many event names used, ignoring event. name, supported count"

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->A()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->v()V

    goto/16 :goto_0

    :cond_10
    :try_start_4
    new-instance v7, Lcom/google/android/gms/measurement/internal/o;

    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/n;->b:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v5, Lcom/google/android/gms/measurement/internal/n;->c:J

    move-object v8, v4

    invoke-direct/range {v7 .. v15}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/o;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/n;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->u()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/y;->a(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Event recorded"

    invoke-virtual {v2, v3, v5}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->v()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->C()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Background event processing time, ms"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v16

    const-wide/32 v6, 0x7a120

    add-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    :try_start_5
    iget-wide v2, v8, Lcom/google/android/gms/measurement/internal/o;->e:J

    move-object/from16 v0, p0

    invoke-virtual {v5, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/n;->a(Lcom/google/android/gms/measurement/internal/S;J)Lcom/google/android/gms/measurement/internal/n;

    move-result-object v2

    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/n;->c:J

    new-instance v3, Lcom/google/android/gms/measurement/internal/o;

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/o;->a:Ljava/lang/String;

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/o;->b:Ljava/lang/String;

    iget-wide v6, v8, Lcom/google/android/gms/measurement/internal/o;->c:J

    iget-wide v8, v8, Lcom/google/android/gms/measurement/internal/o;->d:J

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/measurement/internal/o;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v7, v3

    move-object v5, v2

    goto :goto_4
.end method

.method final a(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/measurement/internal/g;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ah;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "No app data available; dropping event"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "App version does not match; dropping event"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Could not find package"

    invoke-virtual {v1, v2, p2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->j()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->k()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->l()Z

    move-result v11

    move-object v2, p2

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/measurement/internal/AppMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZ)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0
.end method

.method final a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/b;

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->c:J

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v2, "Setting user property"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v6}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->t()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->a(Lcom/google/android/gms/measurement/internal/b;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/g;->u()V

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v2, "User property set"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/b;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->w()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v2, "Ignoring user property. Value too long"

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/b;->b:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g;->v()V

    throw v0
.end method

.method protected final a()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->u:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    const-string/jumbo v3, "android.permission.INTERNET"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    const-string/jumbo v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->u:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->t()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->u:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->y()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->a()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    const-string/jumbo v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "App is missing INTERNET permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->C()V

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->t()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->k()Lcom/google/android/gms/measurement/internal/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/aj;->u()V

    goto :goto_0
.end method

.method public final b(Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 10

    const-wide/32 v8, 0x36ee80

    const-wide/16 v6, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->t()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ah;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->h()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "_pv"

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/ah;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/EventParcel;

    const-string/jumbo v1, "_au"

    new-instance v2, Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    const-string/jumbo v2, "_f"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o;

    move-result-object v0

    if-nez v0, :cond_4

    const-wide/32 v0, 0x36ee80

    div-long v0, v4, v0

    add-long/2addr v0, v6

    mul-long/2addr v0, v8

    new-instance v2, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    const-string/jumbo v3, "_fot"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string/jumbo v7, "auto"

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "_c"

    const-wide/16 v6, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/EventParcel;

    const-string/jumbo v1, "_f"

    new-instance v2, Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/AppMetadata;->j:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/google/android/gms/measurement/internal/EventParcel;

    const-string/jumbo v1, "_cd"

    new-instance v2, Lcom/google/android/gms/measurement/internal/EventParams;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v3, "auto"

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g;->v()V

    throw v0
.end method

.method final b(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->i:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Removing user property"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->t()V

    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/S;->c(Lcom/google/android/gms/measurement/internal/AppMetadata;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/AppMetadata;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->u()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "User property removed"

    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->v()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/g;->v()V

    throw v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->c:Lcom/google/android/gms/measurement/internal/f;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/I;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->d:Lcom/google/android/gms/measurement/internal/I;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/af;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->d:Lcom/google/android/gms/measurement/internal/I;

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->e:Lcom/google/android/gms/measurement/internal/y;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->e:Lcom/google/android/gms/measurement/internal/y;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/y;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->e:Lcom/google/android/gms/measurement/internal/y;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->e:Lcom/google/android/gms/measurement/internal/y;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Lcom/google/android/gms/measurement/internal/O;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->f:Lcom/google/android/gms/measurement/internal/O;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->f:Lcom/google/android/gms/measurement/internal/O;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/ay;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->g:Lcom/google/android/gms/measurement/internal/ay;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->g:Lcom/google/android/gms/measurement/internal/ay;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/internal/M;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->h:Lcom/google/android/gms/measurement/internal/M;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->h:Lcom/google/android/gms/measurement/internal/M;

    return-object v0
.end method

.method final j()Lcom/google/android/gms/measurement/internal/O;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->f:Lcom/google/android/gms/measurement/internal/O;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/measurement/internal/aj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->p:Lcom/google/android/gms/measurement/internal/aj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->p:Lcom/google/android/gms/measurement/internal/aj;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/measurement/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->i:Lcom/google/android/gms/measurement/a;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->j:Lcom/google/android/gms/measurement/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/af;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->j:Lcom/google/android/gms/measurement/internal/c;

    return-object v0
.end method

.method public final n()Lcom/google/android/gms/measurement/internal/g;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->k:Lcom/google/android/gms/measurement/internal/g;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->k:Lcom/google/android/gms/measurement/internal/g;

    return-object v0
.end method

.method public final o()Lcom/google/android/gms/measurement/internal/B;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->l:Lcom/google/android/gms/measurement/internal/B;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->l:Lcom/google/android/gms/measurement/internal/B;

    return-object v0
.end method

.method public final p()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/measurement/internal/an;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->n:Lcom/google/android/gms/measurement/internal/an;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->n:Lcom/google/android/gms/measurement/internal/an;

    return-object v0
.end method

.method public final s()Lcom/google/android/gms/measurement/internal/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->o:Lcom/google/android/gms/measurement/internal/m;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->o:Lcom/google/android/gms/measurement/internal/m;

    return-object v0
.end method

.method public final t()Lcom/google/android/gms/measurement/internal/w;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->q:Lcom/google/android/gms/measurement/internal/w;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->q:Lcom/google/android/gms/measurement/internal/w;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->t:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/S;->a(Lcom/google/android/gms/measurement/internal/ag;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->t:Lcom/google/android/gms/measurement/internal/e;

    return-object v0
.end method

.method public final v()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    return-void
.end method

.method public final w()V
    .locals 14

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->v()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->g()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/O;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->v:Ljava/util/List;

    if-eqz v0, :cond_3

    move v0, v5

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->o()Lcom/google/android/gms/measurement/internal/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B;->t()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->C()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->m:Lcom/google/android/gms/b/a;

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v8

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->W()J

    move-result-wide v0

    sub-long v0, v8, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/S;->a(J)Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/I;->c:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/K;->a()J

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmp-long v3, v0, v6

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v3

    const-string/jumbo v6, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v0, v8, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/g;->x()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S;->c:Lcom/google/android/gms/measurement/internal/f;

    sget-object v1, Lcom/google/android/gms/measurement/internal/r;->g:Lcom/google/android/gms/measurement/internal/s;

    invoke-virtual {v0, v7, v1}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/s;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S;->c:Lcom/google/android/gms/measurement/internal/f;

    sget-object v3, Lcom/google/android/gms/measurement/internal/r;->h:Lcom/google/android/gms/measurement/internal/s;

    invoke-virtual {v1, v7, v3}, Lcom/google/android/gms/measurement/internal/f;->b(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/s;)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v3

    invoke-virtual {v3, v7, v0, v1}, Lcom/google/android/gms/measurement/internal/g;->a(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/b/v;

    iget-object v6, v0, Lcom/google/android/gms/b/v;->s:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/b/v;->s:Ljava/lang/String;

    move-object v6, v0

    :goto_2
    if-eqz v6, :cond_10

    move v1, v2

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/b/v;

    iget-object v10, v0, Lcom/google/android/gms/b/v;->s:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v0, v0, Lcom/google/android/gms/b/v;->s:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-interface {v3, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    :goto_4
    new-instance v6, Lcom/google/android/gms/b/u;

    invoke-direct {v6}, Lcom/google/android/gms/b/u;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/b/v;

    iput-object v0, v6, Lcom/google/android/gms/b/u;->a:[Lcom/google/android/gms/b/v;

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v10, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :goto_5
    iget-object v0, v6, Lcom/google/android/gms/b/u;->a:[Lcom/google/android/gms/b/v;

    array-length v0, v0

    if-ge v3, v0, :cond_9

    iget-object v11, v6, Lcom/google/android/gms/b/u;->a:[Lcom/google/android/gms/b/v;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/b/v;

    aput-object v0, v11, v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v6, Lcom/google/android/gms/b/u;->a:[Lcom/google/android/gms/b/v;

    aget-object v0, v0, v3

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->M()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/b/v;->r:Ljava/lang/Long;

    iget-object v0, v6, Lcom/google/android/gms/b/u;->a:[Lcom/google/android/gms/b/v;

    aget-object v0, v0, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/b/v;->d:Ljava/lang/Long;

    iget-object v0, v6, Lcom/google/android/gms/b/u;->a:[Lcom/google/android/gms/b/v;

    aget-object v0, v0, v3

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lcom/google/android/gms/b/v;->z:Ljava/lang/Boolean;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/y;->a(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/c;->b(Lcom/google/android/gms/b/u;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->m()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/c;->a(Lcom/google/android/gms/b/u;)[B

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->V()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    move v2, v5

    :cond_a
    invoke-static {v2}, Lcom/google/android/gms/common/api/a/j;->b(Z)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S;->v:Ljava/util/List;

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->d()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/I;->d:Lcom/google/android/gms/measurement/internal/K;

    invoke-virtual {v1, v8, v9}, Lcom/google/android/gms/measurement/internal/K;->a(J)V

    const-string/jumbo v1, "?"

    iget-object v2, v6, Lcom/google/android/gms/b/u;->a:[Lcom/google/android/gms/b/v;

    array-length v2, v2

    if-lez v2, :cond_b

    iget-object v1, v6, Lcom/google/android/gms/b/u;->a:[Lcom/google/android/gms/b/v;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/android/gms/b/v;->o:Ljava/lang/String;

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v5, "Uploading data. app, uncompressed size, data"

    array-length v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v1, v6, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->o()Lcom/google/android/gms/measurement/internal/B;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/V;

    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/V;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v0, v7, v11, v3, v1}, Lcom/google/android/gms/measurement/internal/B;->a(Ljava/lang/String;Ljava/net/URL;[BLcom/google/android/gms/measurement/internal/C;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Failed to parse upload URL. Not uploading"

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/S;->v:Ljava/util/List;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->W()J

    move-result-wide v2

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/g;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->n()Lcom/google/android/gms/measurement/internal/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/g;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/ah;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    sget-object v0, Lcom/google/android/gms/measurement/internal/r;->e:Lcom/google/android/gms/measurement/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/measurement/internal/r;->f:Lcom/google/android/gms/measurement/internal/s;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/s;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "config/app/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "app_instance_id"

    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "platform"

    const-string/jumbo v5, "android"

    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v3, "gmp_version"

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->M()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_2
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v5

    const-string/jumbo v6, "Fetching remote configuration"

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->i()Lcom/google/android/gms/measurement/internal/M;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/ah;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/gms/measurement/internal/M;->a(Ljava/lang/String;)Lcom/google/android/gms/b/p;

    move-result-object v2

    if-eqz v2, :cond_e

    iget-object v5, v2, Lcom/google/android/gms/b/p;->a:Ljava/lang/Long;

    if-eqz v5, :cond_e

    new-instance v4, Landroid/support/v4/g/a;

    invoke-direct {v4}, Landroid/support/v4/g/a;-><init>()V

    const-string/jumbo v5, "Config-Version"

    iget-object v2, v2, Lcom/google/android/gms/b/p;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->o()Lcom/google/android/gms/measurement/internal/B;

    move-result-object v2

    new-instance v5, Lcom/google/android/gms/measurement/internal/W;

    invoke-direct {v5, p0}, Lcom/google/android/gms/measurement/internal/W;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/B;->a(Ljava/lang/String;Ljava/net/URL;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/C;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S;->e()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Failed to parse config URL. Not fetching"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    move-object v0, v4

    goto/16 :goto_6

    :cond_10
    move-object v1, v3

    goto/16 :goto_4

    :cond_11
    move-object v6, v4

    goto/16 :goto_2
.end method

.method public final x()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/S;->C()V

    return-void
.end method

.method final y()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/S;->w:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/S;->w:I

    return-void
.end method

.method final z()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/S;->x:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/S;->x:I

    return-void
.end method
