.class public final Lcom/google/android/gms/measurement/internal/aj;
.super Lcom/google/android/gms/measurement/internal/ag;


# instance fields
.field private a:Lcom/google/android/gms/measurement/internal/ak;

.field private b:Z


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/S;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ag;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/aj;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 0
    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p5}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->E()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Event not sent since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/aj;->b:Z

    :try_start_0
    const-string/jumbo v0, "com.google.android.gms.tagmanager.TagManagerService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1000
    :try_start_1
    const-string/jumbo v1, "initialize"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 0
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Logging event (FE)"

    invoke-virtual {v0, v1, p2, p5}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/EventParcel;

    new-instance v2, Lcom/google/android/gms/measurement/internal/EventParams;

    invoke-direct {v2, p5}, Lcom/google/android/gms/measurement/internal/EventParams;-><init>(Landroid/os/Bundle;)V

    move-object v1, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/EventParcel;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/EventParams;Ljava/lang/String;J)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->h()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v1

    invoke-virtual {v1, v0, p7}, Lcom/google/android/gms/measurement/internal/an;->a(Lcom/google/android/gms/measurement/internal/EventParcel;Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :catch_0
    move-exception v0

    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->u()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Failed to invoke Tag Manager\'s initialize() method"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 0
    :catch_1
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->x()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Tag Manager is not found and thus will not be used"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/aj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->E()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->w()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "User property not set since app measurement is disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->y()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Setting user property (FE)"

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;

    move-object v1, p2

    move-wide v2, p4

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/UserAttributeParcel;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->h()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/an;->a(Lcom/google/android/gms/measurement/internal/UserAttributeParcel;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 9

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/am;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/am;-><init>(Lcom/google/android/gms/measurement/internal/aj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 12

    const/16 v11, 0x24

    const/4 v7, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v4

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    const-string/jumbo v0, "event"

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->u()I

    move-result v1

    invoke-static {v0, v1, p2}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-eqz p3, :cond_3

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->t()I

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    const-string/jumbo v3, "event param"

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->v()I

    move-result v9

    invoke-static {v3, v9, v0}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    const/16 v1, 0x19

    if-gt v3, v1, :cond_2

    move v1, v7

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Event can\'t contain more then 25"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, " params"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/google/android/gms/common/api/a/j;->b(ZLjava/lang/Object;)V

    move v1, v3

    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v9

    invoke-virtual {v9, v6, v0, v3}, Lcom/google/android/gms/measurement/internal/c;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->w()I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v11, :cond_4

    move-object v0, p1

    :goto_2
    const-string/jumbo v1, "_o"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->o()Lcom/google/android/gms/measurement/internal/O;

    move-result-object v9

    new-instance v0, Lcom/google/android/gms/measurement/internal/al;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/measurement/internal/al;-><init>(Lcom/google/android/gms/measurement/internal/aj;Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;ZLjava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/measurement/internal/O;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    invoke-virtual {p1, v2, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->i()Lcom/google/android/gms/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/b/a;->a()J

    move-result-wide v4

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/measurement/internal/c;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->l()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_0
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

.method public final t()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/aj;->a:Lcom/google/android/gms/measurement/internal/ak;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/measurement/internal/ak;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/ak;-><init>(Lcom/google/android/gms/measurement/internal/aj;B)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/aj;->a:Lcom/google/android/gms/measurement/internal/ak;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/aj;->a:Lcom/google/android/gms/measurement/internal/ak;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/aj;->a:Lcom/google/android/gms/measurement/internal/ak;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->c()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/aj;->E()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/aj;->m:Lcom/google/android/gms/measurement/internal/S;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->h()Lcom/google/android/gms/measurement/internal/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/an;->u()V

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->g()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/m;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "_po"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "auto"

    const-string/jumbo v2, "_ou"

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/android/gms/measurement/internal/aj;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method
