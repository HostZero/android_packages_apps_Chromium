.class public final Lcom/google/android/gms/measurement/internal/w;
.super Lcom/google/android/gms/measurement/internal/ag;


# static fields
.field private static final a:Ljavax/security/auth/x500/X500Principal;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string/jumbo v1, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/w;->a:Ljavax/security/auth/x500/X500Principal;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/S;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/ag;-><init>(Lcom/google/android/gms/measurement/internal/S;)V

    return-void
.end method

.method private u()Z
    .locals 3

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/w;->a:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Error obtaining certificate"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "Package name not found"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/AppMetadata;
    .locals 13

    new-instance v1, Lcom/google/android/gms/measurement/internal/AppMetadata;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->E()V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->E()V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/w;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->E()V

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/w;->d:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->M()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->E()V

    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/w;->e:J

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/I;->w()Z

    move-result v11

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->q()Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/measurement/internal/I;->l:Z

    if-nez v0, :cond_0

    const/4 v12, 0x1

    :goto_0
    move-object v10, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/measurement/internal/AppMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZ)V

    return-object v1

    :cond_0
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->a()V

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
    .locals 9

    const/4 v1, 0x0

    const-string/jumbo v0, "Unknown"

    const-string/jumbo v2, "Unknown"

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    const-string/jumbo v3, "manual_install"

    :cond_0
    :goto_0
    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iput-object v5, p0, Lcom/google/android/gms/measurement/internal/w;->b:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/w;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/w;->c:Ljava/lang/String;

    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c;->c(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v2, "Could not get MD5 instance"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/w;->e:J

    :cond_3
    :goto_2
    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "-"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->e()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_4
    if-nez v0, :cond_4

    if-nez v2, :cond_b

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "GoogleService failed to initialize (no status)"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :cond_4
    :goto_5
    if-eqz v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/measurement/f;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "AppMeasurement enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    :goto_6
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w;->f:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->N()Z

    move-result v1

    if-nez v1, :cond_6

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/measurement/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v1, ""

    :cond_5
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/w;->f:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y;->z()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v0

    const-string/jumbo v1, "App package, google app id"

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/w;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/w;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_6
    :goto_7
    return-void

    :cond_7
    const-string/jumbo v6, "com.android.vending"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v3, ""

    goto/16 :goto_0

    :catch_0
    move-exception v6

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v6

    const-string/jumbo v7, "Error retrieving package info: appName"

    invoke-virtual {v6, v7, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/w;->e:J

    :try_start_2
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/w;->u()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-lez v3, :cond_3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/c;->c([B)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/w;->e:J
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v2

    const-string/jumbo v3, "Package name not found"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/f;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_3

    :cond_a
    move v0, v1

    goto/16 :goto_4

    :cond_b
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v3

    const-string/jumbo v4, "GoogleService failed to initialize, status"

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->f()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Status;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_c
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->x()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "AppMeasurement disabled with google_app_measurement_enable=0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    move v0, v1

    goto/16 :goto_6

    :catch_2
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/ag;->p()Lcom/google/android/gms/measurement/internal/y;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y;->t()Lcom/google/android/gms/measurement/internal/z;

    move-result-object v1

    const-string/jumbo v2, "getGoogleAppId or isMeasurementEnabled failed with exception"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7
.end method

.method final t()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/w;->E()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w;->f:Ljava/lang/String;

    return-object v0
.end method
