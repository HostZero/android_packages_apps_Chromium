.class final Lcom/google/android/gms/measurement/internal/H;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I

.field private c:J

.field private d:F

.field private e:J

.field private f:F

.field private g:J

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/b/l;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/api/a/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/gms/b/l;->a:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/google/android/gms/b/l;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/google/android/gms/b/l;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/google/android/gms/measurement/internal/H;->b:I

    iget-object v3, p1, Lcom/google/android/gms/b/l;->b:Ljava/lang/Boolean;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/b/l;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/H;->a:Z

    iget-object v0, p1, Lcom/google/android/gms/b/l;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/H;->a:Z

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/google/android/gms/b/l;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/H;->f:F

    iget-object v0, p1, Lcom/google/android/gms/b/l;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/H;->h:F

    :goto_2
    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/H;->i:Z

    return-void

    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/b/l;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/b/l;->c:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/google/android/gms/b/l;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/google/android/gms/b/l;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/b/l;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/H;->e:J

    iget-object v0, p1, Lcom/google/android/gms/b/l;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/H;->g:J

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/H;->a:Z

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/b/l;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/H;->d:F

    goto :goto_2

    :cond_8
    iget-object v0, p1, Lcom/google/android/gms/b/l;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/H;->c:J

    goto :goto_2

    :cond_9
    iput v1, p0, Lcom/google/android/gms/measurement/internal/H;->b:I

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/H;->a:Z

    goto :goto_2
.end method


# virtual methods
.method public final a(F)Ljava/lang/Boolean;
    .locals 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/H;->i:Z

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/H;->a:Z

    if-nez v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/google/android/gms/measurement/internal/H;->b:I

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/google/android/gms/measurement/internal/H;->d:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget v2, p0, Lcom/google/android/gms/measurement/internal/H;->d:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget v2, p0, Lcom/google/android/gms/measurement/internal/H;->d:F

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/google/android/gms/measurement/internal/H;->d:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {p1}, Ljava/lang/Math;->ulp(F)F

    move-result v4

    iget v5, p0, Lcom/google/android/gms/measurement/internal/H;->d:F

    invoke-static {v5}, Ljava/lang/Math;->ulp(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/google/android/gms/measurement/internal/H;->f:F

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_6

    iget v2, p0, Lcom/google/android/gms/measurement/internal/H;->h:F

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_6

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(J)Ljava/lang/Boolean;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/H;->i:Z

    if-nez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/H;->a:Z

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/google/android/gms/measurement/internal/H;->b:I

    packed-switch v3, :pswitch_data_0

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/H;->c:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_1
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/H;->c:J

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    :pswitch_2
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/H;->c:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3

    :pswitch_3
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/H;->e:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_5

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/H;->g:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_5

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
