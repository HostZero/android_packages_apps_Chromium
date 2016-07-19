.class public Landroid/support/v4/e/a;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"


# instance fields
.field private final a:Landroid/view/View;

.field private b:Landroid/view/ViewParent;

.field private c:Z

.field private d:[I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 4046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4047
    iput-object p1, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    .line 4048
    return-void
.end method

.method public static varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    .locals 2

    .prologue
    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 1029
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    :goto_0
    return-object p0

    .line 48
    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/e/c;)Landroid/os/Parcelable$Creator;
    .locals 2

    .prologue
    .line 1036
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 2024
    new-instance v0, Landroid/support/v4/e/d;

    invoke-direct {v0, p0}, Landroid/support/v4/e/d;-><init>(Landroid/support/v4/e/c;)V

    .line 1039
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v4/e/b;

    invoke-direct {v0, p0}, Landroid/support/v4/e/b;-><init>(Landroid/support/v4/e/c;)V

    goto :goto_0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 3056
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 4024
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 3059
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2043
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 3020
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 2046
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 4060
    iget-boolean v0, p0, Landroid/support/v4/e/a;->c:Z

    if-eqz v0, :cond_0

    .line 4061
    iget-object v0, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->z(Landroid/view/View;)V

    .line 4063
    :cond_0
    iput-boolean p1, p0, Landroid/support/v4/e/a;->c:Z

    .line 4064
    return-void
.end method

.method public a(FF)Z
    .locals 2

    .prologue
    .line 4251
    invoke-virtual {p0}, Landroid/support/v4/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4252
    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/aK;->a(Landroid/view/ViewParent;Landroid/view/View;FF)Z

    move-result v0

    .line 4255
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(FFZ)Z
    .locals 2

    .prologue
    .line 4234
    invoke-virtual {p0}, Landroid/support/v4/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4235
    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/aK;->a(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z

    move-result v0

    .line 4238
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 4105
    invoke-virtual {p0}, Landroid/support/v4/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 4124
    :goto_0
    return v0

    .line 4109
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4110
    iget-object v0, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4111
    iget-object v0, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    .line 4112
    :goto_1
    if-eqz v1, :cond_3

    .line 4113
    iget-object v3, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/aK;->a(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4114
    iput-object v1, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    .line 4115
    iget-object v3, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/aK;->b(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V

    move v0, v2

    .line 4116
    goto :goto_0

    .line 4118
    :cond_1
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 4119
    check-cast v0, Landroid/view/View;

    .line 4121
    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    .line 4124
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IIII[I)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 4152
    invoke-virtual {p0}, Landroid/support/v4/e/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_2

    .line 4153
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_3

    .line 4156
    :cond_0
    if-eqz p5, :cond_4

    .line 4157
    iget-object v0, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4158
    aget v1, p5, v7

    .line 4159
    aget v0, p5, v9

    move v6, v0

    move v8, v1

    .line 4162
    :goto_0
    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/aK;->a(Landroid/view/ViewParent;Landroid/view/View;IIII)V

    .line 4165
    if-eqz p5, :cond_1

    .line 4166
    iget-object v0, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4167
    aget v0, p5, v7

    sub-int/2addr v0, v8

    aput v0, p5, v7

    .line 4168
    aget v0, p5, v9

    sub-int/2addr v0, v6

    aput v0, p5, v9

    :cond_1
    move v7, v9

    .line 4177
    :cond_2
    :goto_1
    return v7

    .line 4171
    :cond_3
    if-eqz p5, :cond_2

    .line 4173
    aput v7, p5, v7

    .line 4174
    aput v7, p5, v9

    goto :goto_1

    :cond_4
    move v6, v7

    move v8, v7

    goto :goto_0
.end method

.method public a(II[I[I)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 4190
    invoke-virtual {p0}, Landroid/support/v4/e/a;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    if-eqz v2, :cond_5

    .line 4191
    if-nez p1, :cond_0

    if-eqz p2, :cond_6

    .line 4194
    :cond_0
    if-eqz p4, :cond_7

    .line 4195
    iget-object v2, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-virtual {v2, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4196
    aget v3, p4, v0

    .line 4197
    aget v2, p4, v1

    .line 4200
    :goto_0
    if-nez p3, :cond_2

    .line 4201
    iget-object v4, p0, Landroid/support/v4/e/a;->d:[I

    if-nez v4, :cond_1

    .line 4202
    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Landroid/support/v4/e/a;->d:[I

    .line 4204
    :cond_1
    iget-object p3, p0, Landroid/support/v4/e/a;->d:[I

    .line 4206
    :cond_2
    aput v0, p3, v0

    .line 4207
    aput v0, p3, v1

    .line 4208
    iget-object v4, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    iget-object v5, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-static {v4, v5, p1, p2, p3}, Landroid/support/v4/view/aK;->a(Landroid/view/ViewParent;Landroid/view/View;II[I)V

    .line 4210
    if-eqz p4, :cond_3

    .line 4211
    iget-object v4, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 4212
    aget v4, p4, v0

    sub-int v3, v4, v3

    aput v3, p4, v0

    .line 4213
    aget v3, p4, v1

    sub-int v2, v3, v2

    aput v2, p4, v1

    .line 4215
    :cond_3
    aget v2, p3, v0

    if-nez v2, :cond_4

    aget v2, p3, v1

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 4221
    :cond_5
    :goto_1
    return v0

    .line 4216
    :cond_6
    if-eqz p4, :cond_5

    .line 4217
    aput v0, p4, v0

    .line 4218
    aput v0, p4, v1

    goto :goto_1

    :cond_7
    move v2, v0

    move v3, v0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 4076
    iget-boolean v0, p0, Landroid/support/v4/e/a;->c:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 4090
    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 4135
    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 4136
    iget-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    iget-object v1, p0, Landroid/support/v4/e/a;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/aK;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 4137
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/e/a;->b:Landroid/view/ViewParent;

    .line 4139
    :cond_0
    return-void
.end method
