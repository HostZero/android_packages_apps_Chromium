.class public abstract Landroid/support/v4/app/C;
.super Landroid/support/v4/app/A;
.source "FragmentHostCallback.java"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/support/v4/app/FragmentManagerImpl;

.field private final c:Landroid/app/Activity;

.field private final d:Landroid/os/Handler;

.field private e:I

.field private f:Landroid/support/v4/g/o;

.field private g:Landroid/support/v4/app/O;

.field private h:Z

.field private i:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/support/v4/app/A;-><init>()V

    .line 44
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/C;->b:Landroid/support/v4/app/FragmentManagerImpl;

    .line 60
    iput-object p1, p0, Landroid/support/v4/app/C;->c:Landroid/app/Activity;

    .line 61
    iput-object p2, p0, Landroid/support/v4/app/C;->a:Landroid/content/Context;

    .line 62
    iput-object p3, p0, Landroid/support/v4/app/C;->d:Landroid/os/Handler;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/C;->e:I

    .line 64
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/w;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p1, Landroid/support/v4/app/w;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/C;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 56
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/O;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Landroid/support/v4/g/o;

    invoke-direct {v0}, Landroid/support/v4/g/o;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    .line 269
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    .line 270
    if-nez v0, :cond_2

    .line 271
    if-eqz p3, :cond_1

    .line 272
    new-instance v0, Landroid/support/v4/app/O;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/O;-><init>(Ljava/lang/String;Landroid/support/v4/app/C;Z)V

    .line 273
    iget-object v1, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/g/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_1
    :goto_0
    return-object v0

    .line 276
    :cond_2
    invoke-virtual {v0, p0}, Landroid/support/v4/app/O;->a(Landroid/support/v4/app/C;)V

    goto :goto_0
.end method

.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method a(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 113
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/C;->a:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method final a(Landroid/support/v4/g/o;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    .line 310
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method final a(Z)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    if-nez v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/C;->i:Z

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/C;->i:Z

    .line 229
    if-eqz p1, :cond_2

    .line 230
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    invoke-virtual {v0}, Landroid/support/v4/app/O;->d()V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    invoke-virtual {v0}, Landroid/support/v4/app/O;->c()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method final b(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 313
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/C;->i:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/O;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 321
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public c()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Landroid/support/v4/app/C;->a:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    .line 190
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/O;->e:Z

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/support/v4/app/O;->g()V

    .line 192
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    invoke-virtual {v0, p1}, Landroid/support/v4/g/o;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v4/app/C;->e:I

    return v0
.end method

.method public abstract g()Ljava/lang/Object;
.end method

.method final h()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v4/app/C;->c:Landroid/app/Activity;

    return-object v0
.end method

.method final i()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/support/v4/app/C;->d:Landroid/os/Handler;

    return-object v0
.end method

.method final j()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 201
    iget-boolean v0, p0, Landroid/support/v4/app/C;->i:Z

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 204
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/C;->i:Z

    .line 206
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    invoke-virtual {v0}, Landroid/support/v4/app/O;->b()V

    .line 215
    :cond_1
    :goto_1
    iput-boolean v3, p0, Landroid/support/v4/app/C;->h:Z

    goto :goto_0

    .line 208
    :cond_2
    iget-boolean v0, p0, Landroid/support/v4/app/C;->h:Z

    if-nez v0, :cond_1

    .line 209
    const-string/jumbo v0, "(root)"

    iget-boolean v1, p0, Landroid/support/v4/app/C;->i:Z

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/app/C;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/O;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    .line 211
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    iget-boolean v0, v0, Landroid/support/v4/app/O;->d:Z

    if-nez v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    invoke-virtual {v0}, Landroid/support/v4/app/O;->b()V

    goto :goto_1
.end method

.method final k()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/C;->g:Landroid/support/v4/app/O;

    invoke-virtual {v0}, Landroid/support/v4/app/O;->g()V

    goto :goto_0
.end method

.method final l()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    if-eqz v0, :cond_3

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    invoke-virtual {v0}, Landroid/support/v4/g/o;->size()I

    move-result v4

    .line 253
    new-array v5, v4, [Landroid/support/v4/app/O;

    .line 254
    add-int/lit8 v0, v4, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 255
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    aput-object v0, v5, v1

    .line 254
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 257
    :goto_1
    if-ge v2, v4, :cond_3

    .line 258
    aget-object v6, v5, v2

    .line 1801
    iget-boolean v0, v6, Landroid/support/v4/app/O;->e:Z

    if-eqz v0, :cond_2

    .line 1804
    iput-boolean v3, v6, Landroid/support/v4/app/O;->e:Z

    .line 1805
    iget-object v0, v6, Landroid/support/v4/app/O;->b:Landroid/support/v4/g/p;

    invoke-virtual {v0}, Landroid/support/v4/g/p;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_2

    .line 1806
    iget-object v0, v6, Landroid/support/v4/app/O;->b:Landroid/support/v4/g/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/g/p;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/P;

    .line 2286
    iget-boolean v7, v0, Landroid/support/v4/app/P;->f:Z

    if-eqz v7, :cond_1

    .line 2288
    iput-boolean v3, v0, Landroid/support/v4/app/P;->f:Z

    .line 2289
    iget-boolean v7, v0, Landroid/support/v4/app/P;->e:Z

    iget-boolean v8, v0, Landroid/support/v4/app/P;->g:Z

    if-eq v7, v8, :cond_1

    .line 2290
    iget-boolean v7, v0, Landroid/support/v4/app/P;->e:Z

    if-nez v7, :cond_1

    .line 2294
    invoke-virtual {v0}, Landroid/support/v4/app/P;->a()V

    .line 1805
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 260
    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/O;->f()V

    .line 257
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 263
    :cond_3
    return-void
.end method

.method final m()Landroid/support/v4/g/o;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 282
    .line 283
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    invoke-virtual {v0}, Landroid/support/v4/g/o;->size()I

    move-result v3

    .line 287
    new-array v4, v3, [Landroid/support/v4/app/O;

    .line 288
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    invoke-virtual {v0, v2}, Landroid/support/v4/g/o;->c(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/O;

    aput-object v0, v4, v2

    .line 288
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 291
    :goto_1
    if-ge v1, v3, :cond_3

    .line 292
    aget-object v2, v4, v1

    .line 293
    iget-boolean v5, v2, Landroid/support/v4/app/O;->e:Z

    if-eqz v5, :cond_1

    .line 294
    const/4 v0, 0x1

    .line 291
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/O;->g()V

    .line 297
    iget-object v5, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    iget-object v2, v2, Landroid/support/v4/app/O;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/support/v4/g/o;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v0, v1

    .line 302
    :cond_3
    if-eqz v0, :cond_4

    .line 303
    iget-object v0, p0, Landroid/support/v4/app/C;->f:Landroid/support/v4/g/o;

    .line 305
    :goto_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method
