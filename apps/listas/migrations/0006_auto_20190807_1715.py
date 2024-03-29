# Generated by Django 2.2.2 on 2019-08-07 17:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('listas', '0005_book_language'),
    ]

    operations = [
        migrations.AddField(
            model_name='lists',
            name='source',
            field=models.CharField(blank=True, max_length=200, null=True),
        ),
        migrations.AddField(
            model_name='lists',
            name='url',
            field=models.URLField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='lists',
            name='description',
            field=models.TextField(blank=True, max_length=500, null=True),
        ),
    ]
