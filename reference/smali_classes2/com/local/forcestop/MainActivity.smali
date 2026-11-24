.class public Lcom/local/forcestop/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final SKIP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.android.systemui"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.android.settings"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.amazon.tv.launcher"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.amazon.firetv.launcher"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.amazon.tv.settings.v2"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "com.local.forcestop"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/local/forcestop/MainActivity;->SKIP:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0$com-local-forcestop-MainActivity(Ljava/lang/String;I)V
    .locals 3
    .param p1, "fe"    # Ljava/lang/String;
    .param p2, "fc"    # I

    .line 62
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force stopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/local/forcestop/MainActivity;->finish()V

    .line 68
    return-void
.end method

.method synthetic lambda$onCreate$1$com-local-forcestop-MainActivity()V
    .locals 14

    .line 30
    const-string v0, "dbg.txt"

    const/4 v1, 0x0

    .line 31
    .local v1, "count":I
    const/4 v2, 0x0

    .line 33
    .local v2, "err":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v4, "cmd":Ljava/lang/StringBuilder;
    const-string v5, "for p in $(pm list packages | cut -d: -f2); do case \"$p\" in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const/4 v5, 0x1

    .line 36
    .local v5, "first":Z
    sget-object v6, Lcom/local/forcestop/MainActivity;->SKIP:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "s":Ljava/lang/String;
    if-nez v5, :cond_0

    const-string v8, "|"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .end local v7    # "s":Ljava/lang/String;
    goto :goto_0

    .line 37
    :cond_1
    const-string v6, ") ;; *) am force-stop \"$p\"; c=$((c+1));; esac; done; echo COUNT:$c"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "su"

    aput-object v8, v7, v3

    const-string v8, "-c"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 39
    .local v6, "p":Ljava/lang/Process;
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 40
    .local v7, "br":Ljava/io/BufferedReader;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 41
    .local v8, "er":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v9, "out":Ljava/lang/StringBuilder;
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v11, v10

    .local v11, "line":Ljava/lang/String;
    const-string v12, "\n"

    if-eqz v10, :cond_3

    .line 44
    :try_start_1
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 45
    .end local v11    # "line":Ljava/lang/String;
    .local v10, "line":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v11, "COUNT:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v11, :cond_2

    .line 47
    const/4 v11, 0x6

    :try_start_2
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v11

    goto :goto_1

    :catch_0
    move-exception v11

    goto :goto_1

    .line 50
    .end local v10    # "line":Ljava/lang/String;
    .restart local v11    # "line":Ljava/lang/String;
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    if-eqz v10, :cond_4

    const-string v10, "ERR:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 51
    :cond_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 52
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v10

    .line 53
    .local v10, "rc":I
    const-string v12, "RC:"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 54
    :try_start_4
    new-instance v12, Ljava/io/File;

    invoke-virtual {p0}, Lcom/local/forcestop/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v12, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 58
    .end local v4    # "cmd":Ljava/lang/StringBuilder;
    .end local v5    # "first":Z
    .end local v6    # "p":Ljava/lang/Process;
    .end local v7    # "br":Ljava/io/BufferedReader;
    .end local v8    # "er":Ljava/io/BufferedReader;
    .end local v9    # "out":Ljava/lang/StringBuilder;
    .end local v10    # "rc":I
    .end local v11    # "line":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 55
    :catch_2
    move-exception v4

    .line 56
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 57
    :try_start_5
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Lcom/local/forcestop/MainActivity;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v5, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 59
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_4
    move v0, v1

    .line 60
    .local v0, "fc":I
    move-object v3, v2

    .line 61
    .local v3, "fe":Ljava/lang/String;
    new-instance v4, Lcom/local/forcestop/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3, v0}, Lcom/local/forcestop/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/local/forcestop/MainActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v4}, Lcom/local/forcestop/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const-string v0, "Force stopping apps..."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 29
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/local/forcestop/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/local/forcestop/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/local/forcestop/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 69
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 70
    return-void
.end method
