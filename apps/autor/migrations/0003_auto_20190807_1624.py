# Generated by Django 2.2.2 on 2019-08-07 16:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('autor', '0002_auto_20190806_2002'),
    ]

    operations = [
        migrations.AlterField(
            model_name='autor',
            name='birthdate',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='autor',
            name='country',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
