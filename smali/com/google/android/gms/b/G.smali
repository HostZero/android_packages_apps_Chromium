.class public final Lcom/google/android/gms/b/G;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/c;


# static fields
.field public static final a:Lcom/google/android/gms/b/G;


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/lang/String;

.field private final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/b/H;

    invoke-direct {v0}, Lcom/google/android/gms/b/H;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/G;

    move v2, v1

    move v4, v1

    move-object v5, v3

    move v6, v1

    move v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/b/G;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZB)V

    sput-object v0, Lcom/google/android/gms/b/G;->a:Lcom/google/android/gms/b/G;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/b/G;->b:Z

    iput-boolean p2, p0, Lcom/google/android/gms/b/G;->c:Z

    iput-object p3, p0, Lcom/google/android/gms/b/G;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/b/G;->e:Z

    iput-boolean p6, p0, Lcom/google/android/gms/b/G;->g:Z

    iput-object p5, p0, Lcom/google/android/gms/b/G;->f:Ljava/lang/String;

    return-void
.end method

.method private synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZB)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v4, v1

    move-object v5, v3

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/b/G;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/G;->b:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/G;->c:Z

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/G;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/G;->e:Z

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/G;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/b/G;->g:Z

    return v0
.end method
