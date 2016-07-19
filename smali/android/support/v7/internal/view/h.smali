.class public final Landroid/support/v7/internal/view/h;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatSet.java"


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private b:J

.field private c:Landroid/view/animation/Interpolator;

.field private d:Landroid/support/v4/view/bc;

.field private e:Z

.field private final f:Landroid/support/v4/view/bd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/internal/view/h;->b:J

    .line 115
    new-instance v0, Landroid/support/v7/internal/view/i;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/i;-><init>(Landroid/support/v7/internal/view/h;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->f:Landroid/support/v4/view/bd;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/h;)Landroid/support/v4/view/bc;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->d:Landroid/support/v4/view/bc;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/view/h;)V
    .locals 1

    .prologue
    .line 33
    .line 1081
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    .line 33
    return-void
.end method

.method static synthetic c(Landroid/support/v7/internal/view/h;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(J)Landroid/support/v7/internal/view/h;
    .locals 2

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 96
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Landroid/support/v7/internal/view/h;->b:J

    .line 98
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/aP;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/aP;Landroid/support/v4/view/aP;)Landroid/support/v7/internal/view/h;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p1}, Landroid/support/v4/view/aP;->a()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Landroid/support/v4/view/aP;->b(J)Landroid/support/v4/view/aP;

    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    return-object p0
.end method

.method public final a(Landroid/support/v4/view/bc;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Landroid/support/v7/internal/view/h;->d:Landroid/support/v4/view/bc;

    .line 112
    :cond_0
    return-object p0
.end method

.method public final a(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Landroid/support/v7/internal/view/h;->c:Landroid/view/animation/Interpolator;

    .line 105
    :cond_0
    return-object p0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 63
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aP;

    .line 65
    iget-wide v2, p0, Landroid/support/v7/internal/view/h;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 66
    iget-wide v2, p0, Landroid/support/v7/internal/view/h;->b:J

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/aP;->a(J)Landroid/support/v4/view/aP;

    .line 68
    :cond_1
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->c:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->a(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/aP;

    .line 71
    :cond_2
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->d:Landroid/support/v4/view/bc;

    if-eqz v2, :cond_3

    .line 72
    iget-object v2, p0, Landroid/support/v7/internal/view/h;->f:Landroid/support/v4/view/bd;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/aP;->a(Landroid/support/v4/view/bc;)Landroid/support/v4/view/aP;

    .line 74
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/view/aP;->c()V

    goto :goto_1

    .line 77
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/view/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/aP;

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/view/aP;->b()V

    goto :goto_1

    .line 91
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/view/h;->e:Z

    goto :goto_0
.end method
